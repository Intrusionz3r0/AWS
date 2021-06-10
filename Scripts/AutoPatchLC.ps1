#Author: Intrusionz3r0

function banner {

	$banner = @()
	$banner += ''
	$banner += '    ___         __        ____        __       __    __    ______'
	$banner += '   /   | __  __/ /_____  / __ \____ _/ /______/ /_  / /   / ____/'
	$banner += '  / /| |/ / / / __/ __ \/ /_/ / __ `/ __/ ___/ __ \/ /   / /     '
	$banner += ' / ___ / /_/ / /_/ /_/ / ____/ /_/ / /_/ /__/ / / / /___/ /___   '
	$banner += '/_/  |_\__,_/\__/\____/_/    \__,_/\__/\___/_/ /_/_____/\____/   '
	$banner += '                                                                 '
	$banner += '                          [By Adrian Morales (aka Intrusionz3r0)]'
	$banner += ''
	$banner | foreach-object {
		Write-Host $_ -ForegroundColor (Get-Random -Input @('Green','Cyan','Yellow','gray','white'))
	}

	Start-Sleep -Seconds 3
}


banner
$ASGNAME = 'ASGIPOS2' #Nombre del autoscaling group.
$NEWLC = Get-Date -UFormat "LC-%d/%m/%Y-%H.%M"  | Write-Output
$NEWAMI = Get-Date -UFormat "AMI-%d/%m/%Y-%H.%M"  | Write-Output
$OLDLC =  aws autoscaling describe-launch-configurations --query "LaunchConfigurations[0].LaunchConfigurationName"
$OLDLC = $OLDLC -replace '"', ""
$instace_id = 'i-0b3ac6943c6c40102' #ID de productivo

Write-Host "[*] Creando AMI, por favor espere." -ForegroundColor "yellow"
Write-Output ''
$tmp = aws ec2 create-image --instance-id $instace_id --name  $NEWAMI --tag-specifications "ResourceType=image,Tags=[{Key=Name,Value=$NEWAMI}]" --no-reboot  | Out-String | ConvertFrom-Json > id.tmp
$ami_id = gc id.tmp | Select-String -Pattern 'ami.*'

Write-Host "[*] Creando launch configuration." -ForegroundColor "yellow"
aws autoscaling create-launch-configuration --launch-configuration-name $NEWLC --image-id $ami_id --instance-type t2.micro

Write-Host "[*] Actualizando auto scaling group." -ForegroundColor "yellow"
aws autoscaling update-auto-scaling-group --auto-scaling-group-name $ASGNAME --launch-configuration-name $NEWLC

Write-Host "[*] Eliminando launch configuration antiguo." -ForegroundColor "yellow"
aws autoscaling delete-launch-configuration --launch-configuration-name $OLDLC

Write-Host "[*] Proceso Finalizado." -ForegroundColor "yellow"
