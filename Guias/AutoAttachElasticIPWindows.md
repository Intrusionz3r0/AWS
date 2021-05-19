# Asignar automáticamente una Elastic IP Address a una instancia creada por un ASG. [Windows]


![enter image description here](https://p2zk82o7hr3yb6ge7gzxx4ki-wpengine.netdna-ssl.com/wp-content/uploads/AWS-ASGs-2.png)

**Paso 1:** Crea las **Elastic IP addresses** que necesites.

**Paso 2:** Crear unas **Access keys** para poder ejecutar comandos en tu instancia windows utilizando la CLI.



**Paso 3:** Descargar e instalar el siguiente software en tu instancia EC2 **windows**.

 - [AWSCLIV2](https://awscli.amazonaws.com/AWSCLIV2.msi).


> Para verificar que AWSCLIV2 se instalo correctamente puede abrir powershell como **Administrador** y ejecutar el siguiente comado: 
> 
> `aws --version`

![](https://lh6.googleusercontent.com/yaUf5gEXc8DiTizY_UkxsdPx-xiWfgts-tBPohqIi3Wy2z534-FTitPDJzBNCDWWuy5bsYAT1xIkmdsuWDlJ3STYVU0MHGZXq7B09RGIsozhepgosJ6TNidxvfpHZ9joJeVMf3hm)

**Paso 4:** Dentro de la terminal de powershell, ejecuta el siguiente comando: `aws configure` . Coloca tus credenciales, la región donde se encuentra tu instancia y como formato de salida asigna **JSON**.

```
AWS Access Key ID [None]: *******************
AWS Secret Access Key [None]: *******************************
Default region name [None]: us-west-2
Default output format [None]: json
```

**Paso 5:** Crea el siguiente script en powershell y guárdalo en *C:\Script* con nombre **run.ps1**. (Si la carpeta no existe créala)

```powershell
aws ec2 describe-addresses --query "Addresses[?NetworkInterfaceId == null ].PublicIp" | Out-String | ConvertFrom-Json > ips.tmp
$ipaddress =  gc ips.tmp | select -first 1 | Write-Output
$instance_id = Invoke-WebRequest http://169.254.169.254/latest/meta-data/instance-id | Select-String -Pattern 'i.*'
aws ec2 associate-address --instance-id $instance_id --public-ip $ipaddress
```

**Paso 6:** Crearemos una tarea usando la herramienta **Task Scheduler** para que el programar ejecute el script al iniciar Windows.

  ![](https://lh5.googleusercontent.com/p15Us2bm7RvgRsLOXIrbK2ImDXGje2p77144yKk84zdcRmG5lzI4LRB5CfQYGrUXJuqIXuAPUAPQh0HAp69UdgqrNxdwMWkuqqlHoRxq-qfRh-VCqLeKylQDg7-tRtD8-uo_saMt)



**Paso 7:**  Creamos una tarea.


![](https://lh5.googleusercontent.com/v5QEZDzr3qtJy-1gA5wI5t7SthADWMhN-FGKMflUVXDu2hyZOD0hl4oHr5Ivd4T0NPGaKVdC-B9iWsJRyLBKLZWEUU1BMAFgcLXDwa01_p4q2h_dwH6gIb_S7N_wkkJxH5HjVBUe)


Nos vamos a la pestaña de **Triggers** y lo configuramos uno de la siguiete manera:

**![](https://lh4.googleusercontent.com/VkmEk59Vj2GM5yA3JXi1Wc68y9k75jEJr1NJwD0G-NrNQnySyb2XDPTs6NnO2cQdJHK6t7gghTIKd1Nv2d48-UKF5h71jPqD6XZArCvOuSCT1g69uK7Y6l57iTRrtVPw3rHwCmxA)**

Nos dirigimos a **Actions** y lo configuramos de la siguiente manera:

**![](https://lh6.googleusercontent.com/6LfTSUdUH7dnYglcDi86XgrACSbIPJbRyB2BJVWCzlJJ28KHwPtkukEl63FTzdfTAA7Fp5fRj90ty5IiU6h_VtOjWJm6cgq357IV0k-cU1NruUFhLcjUbPIGblGHSxGu9mtbhKcJ)**

> **Nota:** En el primer campo se debe colocar la ruta nativa de powershell que en muchas ocasiones es la siguiente: **C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe**

Si todo se configuro correctamente se le pedirá que ingrese sus credenciales.

**![](https://lh4.googleusercontent.com/FosYPoCQ9RQpuZzU6maYyU8LQAoO1eXgZrdGgo9utX6srpbzgvos6XqATdstCIaPHvxJT7SsbEOBOR9co3BZURdeuy79hfAHFvb842fJVXbPlo5ihZssNmC1_9kCYwBLNWvaxHUU)**

Por último si deseas probar que todo se configuro correctamente puedes detener la instancia e iniciarla. Cuando la EIP se asigne ya podrá crear su AMI y configurar su ASG.









