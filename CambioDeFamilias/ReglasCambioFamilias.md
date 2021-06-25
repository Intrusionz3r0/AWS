#  Reglas para cambios de familia.

![enter image description here](https://www.programaenlinea.net/wp-content/uploads/2020/12/aws.jpg)


### Reglas

 1. Al migrar a instancias basadas en Nitro.
 2. Migrar de generación anterior a última generación.

### **Tipos de instacias:**

*  [Instancias de generación anterior.](https://aws.amazon.com/ec2/previous-generation/)
 
*  [Instancias de última generación.](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/instance-types.html#current-gen-instances)


### Aspectos a tomar en cuenta:

* Al migrar a las instancias de última generación, es posible que se pierda la IP estática o la configuración de red DNS personalizada en el ENI existente, ya que la instancia se utilizará de forma predeterminada en un nuevo dispositivo Adaptador de red mejorado. 

* Los siguientes procedimientos de migración se pueden realizar en Windows Server versión 2008 R2 y posteriores.

* **[!] Importante** Se recomienda crear una copia de seguridad de la instancia (**AMI**).






### **¿Que instancias estan basadas en nitro?**
-   **Virtualizadas**: C5, C5a, C5ad, C5d, C5n, D3, D3en, G4, I3en, M5, M5a, M5ad, M5d, M5dn, M5n, M5zn,  `p3dn.24xlarge`, R5, R5a, R5ad, R5b, R5d, R5dn, R5n, T3, T3a, high memory (u-*), and z1d
    
-   **Bare metal**:  `c5.metal`,  `c5d.metal`,  `c5n.metal`,  `i3.metal`,  `i3en.metal`,  `m5.metal`,  `m5d.metal`,  `m5dn.metal`,  `m5n.metal`,  `m5zn.metal`,  `r5.metal`,  `r5b.metal`,  `r5d.metal`,  `r5dn.metal`,  `r5n.metal`,  `u-6tb1.metal`,  `u-9tb1.metal`,  `u-12tb1.metal`,  `u-18tb1.metal`,  `u-24tb1.metal`, and  `z1d.metal`



# Instalación de PV Drivers

* Como práctica recomendada, recomendamos actualizar siempre a los controladores más recientes para instancias de Windows en AWS.

* **[!]** Aunque los controladores AWS PV no se utilizan en el sistema Nitro, aún debe actualizarlos si tiene versiones anteriores de Citrix PV o AWS PV

**Descargar:**  [AWSPVDriver.zip](https://s3.amazonaws.com/ec2-windows-drivers-downloads/AWSPV/Latest/AWSPVDriver.zip) Para instalarlo solamente ejecute el binario: **AWSPVDriverSetup.msi**

### Comprobar PVDrivers

**Ejecutar en powershell como administrador**

```
Get-ItemProperty HKLM:\SOFTWARE\Amazon\PVDriver
```

# ENA Drivers


Actualice al controlador del Adaptador de red elástico más reciente para asegurarse de que todas las funciones de red sean compatibles. Si lanzó su instancia y no tiene la red mejorada habilitada, debe descargar e instalar el controlador del adaptador de red requerido en su instancia.

* Todos los tipos de instancias de la generación actual admiten redes mejoradas, excepto las instancias T2.
* Las instancias de la generación actual usan ENA para redes mejoradas, excepto para las instancias C4, D2 y **M4** más pequeñas que `m4.16xlarge`.

 * **[!] Importante** Debe usar PowerShell versión 3.0 o posterior para realizar correctamente la actualización (**As a Administrador**).
 

* Si cambiamos de un **r4** a **r5** se debe actualizar instalar los ENA Drivers, esto porque a pesar de que son instancias de última generación **r4** no es instancia nitro, pero **r5** si es instancia nitro, por lo que será necesario instalar los ENA drivers.


- **Descargar:**  [AwsEnaNetworkDriver.zip](https://s3.amazonaws.com/ec2-windows-drivers-downloads/ENA/Latest/AwsEnaNetworkDriver.zip) para instalar ejecute el script: **install.ps1** desde una consola de powershell como administrador.




### Habilitar ENA Drivers

**Ejecutar en cloudshell:**
```
[cloudshell-user@ip-10-1-60-91 ~]$ aws ec2 modify-instance-attribute --instance-id i-04538e3b48b425f36 --ena-support
[cloudshell-user@ip-10-1-60-91 ~]$ aws ec2 describe-instances --instance-ids i-04538e3b48b425f36 --query "Reservations[].Instances[].EnaSupport"
```


# NVMe

Los controladores AWS NVMe se utilizan para interactuar con Amazon EBS y volúmenes de almacenamiento de instancias SSD que están expuestos como dispositivos de bloque NVMe en el sistema Nitro para un mejor rendimiento.

**[!] importante** Actualizar AWS NVMe siempre y cuando deseas cambiar de una instancia de generación anterior a una instancia de última generación.


-  **Descargar:**  [AWSNVMe.zip](https://s3.amazonaws.com/ec2-windows-drivers-downloads/NVMe/Latest/AWSNVMe.zip) para instalar ejecuta: **dpinst.exe**.


### Ejecutar SysPrep

**Para aplicar el comando, debe ejecutar la sesión de PowerShell como administrador. Las versiones de PowerShell (x86) generarán un error.** 
```
PS C:\> rundll32.exe C:\Windows\System32\sppnp.dll,Sysprep_Generalize_Pnp
```

## Si no cuenta con interfaz grafica.

* **[!]** **Ejecutar los siguientes comandos en powershell como administrador**


**Descargar archivos.**
```
PS C:\> invoke-webrequest https://s3.amazonaws.com/ec2-windows-drivers-downloads/ENA/Latest/AwsEnaNetworkDriver.zip -outfile $env:USERPROFILE\AwsEnaNetworkDriver.zip
PS C:\> invoke-webrequest https://s3.amazonaws.com/ec2-windows-drivers-downloads/AWSPV/Latest/AWSPVDriver.zip -outfile $env:USERPROFILE\AWSPVDriver.zip
PS C:\> invoke-webrequest https://s3.amazonaws.com/ec2-windows-drivers-downloads/NVMe/Latest/AWSNVMe.zip -outfile $env:USERPROFILE\AWSNVMe.zip
```
**Descomprimir archivos**
```
PS C:\> cd $env:USERPROFILE
PS C:\> Add-Type -Assembly "System.IO.Compression.Filesystem"
PS C:\> [System.IO.Compression.ZipFile]::ExtractToDirectory("C:\Ruta\AWSPVDriver.zip", "C:\Ruta\AWSPVDriver")
PS C:\> [System.IO.Compression.ZipFile]::ExtractToDirectory("C:\Ruta\AwsEnaNetworkDriver.zip", "C:\Ruta\AwsEna")
PS C:\> [System.IO.Compression.ZipFile]::ExtractToDirectory("C:\Ruta\AWSNVMe.zip", "C:\Ruta\AWSNVMe")
```

**Para ejecutar un script o binario**

```
PS C:\> .\binario.msi
PS C:\> .\script.ps1
```
