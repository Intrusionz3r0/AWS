# Es necesario crear un rol y adjuntarlo al lambda (Creado por Intrusionz3r0) 
#
#
#{
#    "Version": "2012-10-17",
#    "Statement": [
#        {
#            "Sid": "VisualEditor0",
#            "Effect": "Allow",
#            "Action": [
#                "ec2:DescribeImages",
#                "autoscaling:CreateLaunchConfiguration",
#                "ec2:DeregisterImage",
#                "autoscaling:DeleteLaunchConfiguration",
#                "ec2:CreateTags",
#                "autoscaling:DescribeAutoScalingGroups",
#                "autoscaling:DescribeLaunchConfigurations",
#                "ec2:CreateImage",
#                "autoscaling:UpdateAutoScalingGroup",
#                "autoscaling:CreateAutoScalingGroup"
#            ],
#            "Resource": "*"
#        }
#    ]
#}

import datetime,boto3

def lambda_handler(event, context):
    
    #Variables
    region_name="" #Region donde se encuentran los recursos
    ec2 = boto3.client('ec2',region_name=region_name)
    autoscaling = boto3.client('autoscaling',region_name=region_name)
    responseautoscaling = autoscaling.describe_launch_configurations()
    currentDT = datetime.datetime.now()
    ASGNAME = 'myasg' #Nombre del autoscaling group.
    instace_id = 'i-0a821532f2axxxxx' #ID de productivo
    instance_type= "t2.micro" #Tipo de instancia a lanzar
    keypair = 'mykeypair' #Keypair de la instancia de productivo
    securityGroup = 'sg-08b3ed56858exxxxx' #Grupo de seguridad de la instancia de productivo
    NEWLC = currentDT.strftime("LC-%Y/%m/%d-%H%M%S")
    NEWAMI = currentDT.strftime("LC-%Y/%m/%d-%H%M%S")
    OLDLC = responseautoscaling['LaunchConfigurations'][0]['LaunchConfigurationName']

    def proceso():
        print("[*] Creando AMI, por favor espere.")
        try:
            ami_id = ec2.create_image(Description=NEWAMI,InstanceId=instace_id, Name=NEWAMI, NoReboot=True,TagSpecifications=[{'ResourceType': 'image','Tags': [ { 'Key': 'Name', 'Value': NEWAMI }]}])
        except:
            print("[!] Error al crear la AMI")
        ami_id = ami_id['ImageId']

        print("[*] Creando launch configuration.")
        try:
            autoscaling.create_launch_configuration(LaunchConfigurationName=NEWLC, ImageId=ami_id, KeyName=keypair, SecurityGroups=[securityGroup,], InstanceId=instace_id, InstanceType=instance_type)
        except:
            print("[!] Error al crear el launch configuration")
        #Si la instancia tiene más de un securityGroup entonces usa la siguiente linea
        #autoscaling.create_launch_configuration(LaunchConfigurationName=NEWLC, ImageId=ami_id, KeyName=keypair, SecurityGroups=['sg-00843828f2e4a4943','sg-0382dcae73aec7bcb'], InstanceId=instace_id, InstanceType=instance_type)

        print("[*] Actualizando auto scaling group.")
        try:
            autoscaling.update_auto_scaling_group( AutoScalingGroupName=ASGNAME, LaunchConfigurationName=NEWLC)
        except:
            print("[!] Error al actualizar el auto scaling group")

        print("[*] Eliminando antiguo launch configuration.")
        try:
            autoscaling.delete_launch_configuration(LaunchConfigurationName=OLDLC)
        except:
            print("[!] Error al crear launch configuration")

        print("[*] Proceso Finalizado.")


    def eliminarAMI():
        ec2_amis =  ec2.describe_images(Owners=['self'])
        for x in ec2_amis['Images']:
            if("LC-" in x['Name']):
                try:
                    ec2.deregister_image(ImageId=str(x['ImageId']))
                except:
                    print("No hay AMIS")
                    break
                
    eliminarAMI()
    proceso()
    
