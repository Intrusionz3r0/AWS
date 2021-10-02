# Cambio de familia R4 a R5 Windows

[![AWSLOGO](https://camo.githubusercontent.com/0cb6425019d1b9cdbde64b110c62202810b5945804e57a3d3687974881aa86da/68747470733a2f2f7777772e6962736572766569732e636f6d2f6e756576612f6173736574732f696d672f61626f75742d626f7865732d332e6a7067)](https://camo.githubusercontent.com/0cb6425019d1b9cdbde64b110c62202810b5945804e57a3d3687974881aa86da/68747470733a2f2f7777772e6962736572766569732e636f6d2f6e756576612f6173736574732f696d672f61626f75742d626f7865732d332e6a7067)

Descargamos  **PVDrivers**  y  **ENADrivers**.

```
C:\> invoke-webrequest https://s3.amazonaws.com/ec2-windows-drivers-downloads/ENA/Latest/AwsEnaNetworkDriver.zip -outfile $env:USERPROFILE\AwsEnaNetworkDriver.zip
C:\> invoke-webrequest https://s3.amazonaws.com/ec2-windows-drivers-downloads/AWSPV/Latest/AWSPVDriver.zip -outfile $env:USERPROFILE\AWSPVDriver.zip
```

Nos dirigimos a la carpeta y extraemos los archivos  _zip_.

```
C:\> cd $env:USERPROFILE
C:\> Add-Type -Assembly "System.IO.Compression.Filesystem"
C:\> [System.IO.Compression.ZipFile]::ExtractToDirectory("C:\Windows\system32\config\systemprofile\AWSPVDriver.zip", "C:\Windows\system32\config\systemprofile\AWSPVDriver")
C:\> [System.IO.Compression.ZipFile]::ExtractToDirectory("C:\Windows\system32\config\systemprofile\AwsEnaNetworkDriver.zip", "C:\Windows\system32\config\systemprofile\AwsEna")
```

1.  Dentro de la carpeta  **AwsEna**  ejecutamos el  _install.ps1_.

```
C\> cd AwsEna
C\> .\install.ps1
```

2.  Dentro de la carpeta  **AWSPVDriver**  ejecutamos  _AWSPVDriverSetup.msi_.

```
C\> cd AWSPVDriver
C\> .\AWSPVDriverSetup.msi
```


3.  Apagamos instancia y habilitamos la compatibilidad con ENA.

### [](https://github.com/Intrusionz3r0/AWS/blob/master/CambioDeFamilias/Cambio%20de%20familia%20r4%20a%20r5.md#aws-cli)AWS CLI

```
aws ec2 modify-instance-attribute --instance-id i-04f6fec32990cf732 --ena-support
aws ec2 describe-instances --instance-ids i-04f6fec32990cf732 --query "Reservations[].Instances[].EnaSupport" 
```

4.  Hacemos el cambio de familia e iniciamos la instancia.
