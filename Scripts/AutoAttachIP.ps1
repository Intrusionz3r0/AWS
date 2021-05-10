aws ec2 describe-addresses --query "Addresses[?NetworkInterfaceId == null ].PublicIp" | Out-String | ConvertFrom-Json > ips.tmp
$ipaddress =  gc ips.tmp | select -first 1 | Write-Output
$instance_id = Invoke-WebRequest http://169.254.169.254/latest/meta-data/instance-id | Select-String -Pattern 'i.*'
aws ec2 associate-address --instance-id $instance_id --public-ip $ipaddress
