#!/bin/bash

#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"


ASGNAME='LinuxASG'
region_name='us-west-2'
NEWLC=`date +'LC-%d/%m/%Y-%H.%M'`
NEWAMI=`date +'LC-%d/%m/%Y-%H.%M'`
OLDLC=`aws autoscaling describe-launch-configurations --region $region_name --query "LaunchConfigurations[0].LaunchConfigurationName" |sed 's/"// g'`
instace_id='i-0b9da0d5cd329cacd'

function ctrl_c(){
	echo -e "\n${yellowColour}[*]${endColour}${grayColour} Exiting...${endColour}"; sleep 2
	exit 1
}

function banner(){
	echo -e "${purpleColour}"
	echo -e '    ___         __        ____        __       __    __    ______'
	echo -e '   /   | __  __/ /_____  / __ \____ _/ /______/ /_  / /   / ____/'
	echo -e '  / /| |/ / / / __/ __ \/ /_/ / __ `/ __/ ___/ __ \/ /   / /     '
	echo -e ' / ___ / /_/ / /_/ /_/ / ____/ /_/ / /_/ /__/ / / / /___/ /___   '
	echo -e '/_/  |_\__,_/\__/\____/_/    \__,_/\__/\___/_/ /_/_____/\____/   '
	echo -e '                                                                 '
	echo -e "${endColour}${redColour}"
	echo -e '                          [By Adrian Morales (aka Intrusionz3r0)]'
	echo -e "${endColour}"
}


function run(){
	echo -e "${yellowColour}[*]${endColour} ${grayColour}Creando AMI, por favor espere.${endColour}"
	sleep 2
	ami_id=`aws ec2 create-image --instance-id $instace_id --name $NEWAMI --no-reboot --region $region_name | grep -oP 'ami.*'`
	ami_id=`echo $ami_id | tr -d '"'`

	echo -e "${yellowColour}[*]${endColour} ${grayColour}Creando launch configuration.${endColour}"
	sleep 2
	aws autoscaling create-launch-configuration --launch-configuration-name $NEWLC --image-id $ami_id --instance-type t2.micro --region $region_name

	echo -e "${yellowColour}[*]${endColour} ${grayColour}Actuaizando Auto Scaling Group.${endColour}"
	sleep 2
	aws autoscaling update-auto-scaling-group --auto-scaling-group-name $ASGNAME --launch-configuration-name $NEWLC --region $region_name

	echo -e "${yellowColour}[*]${endColour} ${grayColour}Eliminado antiguo Launch Configuration.${endColour}"
	sleep 2
	aws autoscaling delete-launch-configuration --launch-configuration-name $OLDLC --region $region_name
}


if [ "$(echo $UID)" == "0" ];
then
	banner
	run
else
    banner
    echo -e "\n\n${redColour}[!]${endColour} ${grayColour}Debes ejecutar el script como root.${endColour}\n"
    sleep 4
fi
