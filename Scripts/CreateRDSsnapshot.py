import json,boto3,datetime

def lambda_handler(event, context):
    
    rds = boto3.client('rds',region_name='us-east-1')
    
    today = datetime.datetime.now()
    
    response = rds.create_db_snapshot(
        DBSnapshotIdentifier='Respaldo'+"-Mes"+str(today.month) + "Dia" + str(today.day) +"-"+ "Hora" +str(today.hour) +"-"+ str(today.minute),
        DBInstanceIdentifier='db-snapshot',
        Tags=[{'Key': 'Name','Value': 'snap'},])
    
    print(response)
