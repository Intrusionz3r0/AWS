

# AWS Security Speciality

![enter image description here](https://www.proicttraining.com/wp-content/uploads/2019/07/aws-Certified-Security.jpg)



# Model CIA (Confidentiality,Integrity and Availability)


* **Confidentiality**: Consiste en como se protege la información para mantenerla segura. 

* **Integrity**:   Consiste en garantizar que los datos no hayan sido manipulados y, por lo tanto, sean confiables.

* **Availability:** Consiste en que la información se encuentre disponible bajo cualquier circunstancia para los usuarios autorizados.




# Model AAA

* **Authentication:**  El método que se utiliza para la autenticación como credenciales de acceso.
* **Authorization:** Consiste en la autorización de acciones que puedes realizar. (Permisos)-
* **Accounting:** Consiste en que toda acción que se realice quedará registrada.


# Non-Repudiation.

El no repudio es la seguridad de que alguien no puede negar la validez de algo


## Security of the cloud

#### ¿Como AWS protege su infraestructura?

* ### Physical and Evironmental Security
	* Fire Detection and Suppression.
	* Power.
	* Climate and Temperature.
	* Managmet.
	* Storage Devide Decommissioning.

* ### Business Continuity Management
	* Availabiliy.
	* Incident Response.
	* Company-Wide- Executive Review .
	* Communication.

* ### Network Security
	* Secure Network Architecture.
	* Secure Access Points.
	* Transmission Protection.
	* Amazon Corporate Segregation.
	* Fault Tolerant Design.
	* Network Monitoring and protection.

* ### AWS Access
	* Account Review And Audit
	* Background Checks
	* Credentials Policy

* ### Security Design principles
	* Software
	* Infraestructure


Documetos de ayuda.

* [AWS Security](https://aws.amazon.com/security/)
* [Introduction to AWS Security.](https://docs.aws.amazon.com/whitepapers/latest/introduction-aws-security/welcome.html).


# Shared Responsability Model  [Importante]

![enter image description here](https://docs.aws.amazon.com/whitepapers/latest/introduction-aws-security/images/image2.png)

 [Mas información..](https://aws.amazon.com/es/compliance/shared-responsibility-model/)


# Security OF the cloud.

AWS es responsable de proteger la infraestructura que ejecuta todos los servicios provistos en la nube de AWS. Esta infraestructura está conformada por el hardware, el software, las redes y las instalaciones que ejecutan los servicios de la nube de AWS.



# Security IN the cloud


La responsabilidad del cliente estará determinada por los servicios de la nube de AWS que el cliente seleccione. Esto determina el alcance del trabajo de configuración a cargo del cliente como parte de sus responsabilidades de seguridad. Como tal, requiere que el cliente realice todas las tareas de administración y configuración de seguridad necesarias. Los clientes que implementan una instancia de Amazon EC2 son responsables de la administración del sistema operativo huésped (incluidos los parches de seguridad y las actualizaciones), de cualquier utilidad o software de aplicaciones que el cliente haya instalado en las instancias y de la configuración del firewall provisto por AWS (llamado grupo de seguridad) en cada instancia.


## Cloud Controls

* **Visibility:** AWS Config.
 * **Auditability:** AWS CloudTrail.
 * **Controllability:** AWS KMS y AWS HSM
 * **Agility:** Cloud Formation y AWS Beanstalk.
 * **Automation:** AWS OpsWorks y AWS CodeDeploy
 * **Scale:**

**Infrastrcture services:** Esta categoría incluye servicios de computo como EC2,EBS,Auto Scaling y VPC, con estos servicios tu puedes diseñar y construir una infraestructura usando tecnología muy similar a un On-Premises. Tu puedes controlar el sistema operativo, puedes configurar y operar cualquier sistema de identidad que provee acceso a los usuarios.

*Ec2 you are responsible for;*

* AMI
* Sistemas operativos.
* Aplicaciones.
* Data in transit.
* Data at rest..
* Data stores.
* Credentiales.
* Policies and configuration.

**Container Services:** Los servicios en esta categoria son los que se ejecutan separados de una EC2 u otra infraestructra de instancias, pero algnas veces tu no puedes administrar el sistema operativo o la capa de aplicación. De los servicios de contenedor tu eres responsable de configurar y administrar los controles de red como reglas de firewall y accesos de identidad por separado mediante IAM.

*Ejemplos de servicios contenedores;*

* RDS.
* EMR.
* Elastic Beanstalk.

**Abstracted Services:** Estos incluye almacenamiento de alto nivel, bases de datos, servicios de mensajería y cosas como S3, o Glacier o DynamoDB o SQS o SES. Y estos servicios básicamente abstraen la plataforma o capa de gestión en la que puede construir y operar sus aplicaciones en la nube. Aún puede acceder a los puntos finales de estos servicios abstractos utilizando las API, pero AWS administra los componentes de servicio subyacentes, o los sistemas operativos en los que residen.




# IAM

![enter image description here](https://d2908q01vomqb2.cloudfront.net/22d200f8670dbdb3e253a90eee5098477c95c23d/2018/01/05/IAM_social_v2_800x400.png)

**AWS Identity and Access Management (IAM)** es un servicio web que le ayuda a controlar de forma segura el acceso a los recursos de AWS. Utilice IAM para controlar quién está autenticado (ha iniciado sesión) y autorizado (tiene permisos) para utilizar recursos.

-   **Usuarios:**  Una entidad que se crea en AWS para representar a la persona o a la aplicación que se utiliza para interactuar con AWS.

-   **Roles:**  Un rol de IAM es una identidad de IAM con permisos específicos es similar a un usuario de IAM, ya que se trata de una identidad de AWS con políticas de permisos que determinan lo que la identidad puede hacer o no en AWS, un rol no tiene asociadas credenciales a largo plazo estándar, como una contraseña o claves de acceso. En su lugar, cuando se asume un rol, este proporciona credenciales de seguridad temporales para la sesión de rol.
-   **Grupos:**  ¨Permite agrupar a varios usuario y gestionar los permisos mas facil.  _Todos los usuarios heredan los permisos de manera automatica al asociarse con un grupo_.
-   **Politica:**  Documento que define uno o mas permisos. **JSON**
* **ARN:** identifican de forma exclusiva los recursos de AWS. Se requiere un ARN cuando es preciso especificar un recurso de forma inequívoca para todo AWS, como en las políticas de IAM, las etiquetas de Amazon Relational Database Service (Amazon RDS) y las llamadas a API.

## IAM Root Users

Consejos para asegurar su cuenta de AWS en caso de que el administrador de las cuentas de AWS se retiro de la empresa.

* Cambiar la contraseña del usuario **Root**.
* Deshabilitar el MFA y volverlo a activar.
* Si usas MFA es recomendable que tomes una foto al código QR  y lo guardes en un lugar seguro de tal manera que si pierdes tu celular aun puedes utilizar ese QR para poder reactivar el MFA.
* Borrar las Access keys y crear unas nuevas.
* Aplica politicas de contraseñas estrictas.
* Identifica a los otros usuarios y si estos son legítimos de lo contrario elimínalos.


## IAM Policies

Una política es un objeto de AWS que, cuando se asocia a una identidad o un recurso, define sus permisos. AWS evalúa estas políticas cuando una entidad principal de IAM (usuario o rol) realiza una solicitud. Los permisos en las políticas determinan si la solicitud se permite o se deniega.


**Ejemplo de politica:**


```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "ec2:RebootInstances",
                "ec2:CopySnapshot",
                "ec2:ImportVolume",
                "ec2:TerminateInstances",
                "ec2:ImportInstance",
                "ec2:ImportKeyPair",
                "ec2:ImportSnapshot",
                "ec2:CopyImage",
                "ec2:CopyFpgaImage",
                "ec2:DeleteVolume",
                "ec2:DeleteVpc",
                "ec2:ImportImage",
                "ec2:DeleteKeyPair"
            ],
            "Resource": "*"
        }
    ]
}
```



-   **AWS managed policies***  – Políticas administradas creadas y administradas por AWS.

-   **Customer managed policies**  – Políticas administradas que crea y administra en su cuenta de AWS. Las políticas administradas por el cliente ofrecen un control más preciso sobre las políticas que las políticas administradas por AWS.
-   **Inline policies**– Directivas que se agregan directamente a un único usuario, grupo o rol. Las directivas en línea mantienen una estricta relación uno a uno entre una política y una identidad. Se eliminan cuando se elimina la identidad.



## Bucket Policies




### Casos de uso:

* Cuando deseas simplemente garantizar acceso a un S3 sin usar IAM roles.
* Las políticas  de IAM permite un tamaño de 2 kb para usuarios,5 kb para grupos, 10 kb para roles y 20 kb para políticas de s3.
* Mantener las políticas de control de acceso en tu entorno de s3.




**Consejos:**
* Las politicas especifican que acciones se permiten o se niegan en un bucket s3 
* *Las politicas de buckets se aplican a buckets individuales,*
* Estas politicas son solo a nivel de s3 y solo s3.
* *Las ACL se aplican a objetos individuales*
* [!] **Explicit Denied:**  La negación explicita (**Deny**) siempre triunfa sobre un **Allow**.


**Ejemplo:** 
```json
{
  "Id": "Policy1623650735369",
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "Stmt1623650632250",
      "Action": "s3:*",
      "Effect": "Deny",
      "Resource": "arn:aws:s3:::example-user",
      "Principal": "*"
    },
    {
      "Sid": "Stmt1623650733034",
      "Action": [
        "s3:DeleteObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::examplebucket",
      "Principal": {
        "AWS": [
          "arn:aws:iam::2641187756633:user/example-user"
        ]
      }
    }
  ]
}
```
**Deny** sobrescribe el **Allow** por lo que el usuario *example-user* no podrá acceder a el bucket.




## ACL S3

* Las ACL de S3 son un mecanismo de control de acceso heredado anterior a IAM.

* AWS recomienda usar  las políticas de IAM y las políticas de Bucket. Sin embargo, si necesita aplicar políticas sobre el objeto por sí mismo, utilice las ACL de S3.

* Las políticas de bucket solo se pueden aplicar a nivel de Bucket, 

* S3 ACL se puede aplicar a archivos individuales (objetos)

### Casos de uso

* si necesita permisos detallados sobre objetos individuales (archivos) dentro de S3

* Las políticas de bucket están limitadas a 20 kb de tamaño, así que considere usar s3 ACLS si encuentra que su política de depósito crece demasiado.



### Nota

Recuerda que **Explicit Denied** siempre triunfa sobre **allow** pero ¿que pasaría si haces que un objeto sea publico para cualquiera y dentro de las políticas de IAM a tu usuario le niegas el acceso?

Esto va a depender desde donde accedes al objecto, si estas autenticado e intentas acceder al objeto utilizando la URL del objeto en este caso puede ser algo como: [https://awssecuritycoursecg.s3.amazonaws.com/cloudendure.log](https://bucketchidoexample.s3.amazonaws.com/cloudendure.log) podras ver que si podras acceder y te preguntaras; ¿pero como si sabemos que **Explicit Denied** siempre gana sobre **Allow**? esto se debe a que si utilizamos el URL de arriba accederemos sin ningún método de autenticacion pero si lo hacemos utilizando el botón de **open** de la interfaz de S3 obtendremos un access denied y esto se debe a que estamos autenticados.



 **[!]** **IMPORTANTE**
![](https://lh5.googleusercontent.com/mZtE2tOinnBVG7ciSIVIg9DRZubAQAa3cJqF7NZeyIiM34xtYiQFiXjJMQpqdv55NwAHz-zVN09lgU4o3dtgVMK52P6pcDJi_cF234u2nEYL_yYWRQX1AAmL3hVgGpLsKIpDNTM5)

**Explicación del diagrama**
Cuando vaya al examen y le pidan que analice unas políticas, comience con la mentalidad de que todo se va a negar , esto por el principio de mínimo privilegio. Luego evalué las políticas , si encuentra una negación explicita entonces el resultado será **Deny**, si no hay negación explicita y hay uno o más  Allow el resultado sera **Allow** pero si no hay ninguna negación explicita y tampoco una política Allow el resultado será **Deny**.

### Recuerda:

* La decisión del principio de mínimo privilegio será negar.
* La negación explicita siempre triunfa sobre un permiso.
* Si no se especifica un permiso el resultado será **Deny**
* Si no se especifica un **Deny** y uno o mas objetos tienen un **Allow** el resultado será permitir, 



##  Forzar cifrado SSL mediante S3

```json
{"Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "PublicReadGetObject",
            "Effect": "Allow",
            "Principal": {
                "AWS": "*"
            },
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::yourbucketnamehere/*"
        },
        {
            "Sid": "PublicReadGetObject",
            "Effect": "Deny",
            "Principal": {
                "AWS": "*"
            },
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::yourbucketnamehere/*",
            "Condition":{
                "Bool":
                { "aws:SecureTransport": false } 
            } 
        } 
    ]
}
```



## Replicación entre regiones

Con la replicación es posible copiar objetos entre buckets de Amazon S3 de forma automática y asincrónica. Los buckets que estén configurados para la replicación de objetos pueden pertenecer a la misma cuenta de AWS o a cuentas diferentes. El objeto se puede replicar en un solo bucket de destino o en varios. Los buckets de destino pueden estar en diferentes regiones de AWS o dentro de la misma región que el bucket de origen.


### Requisitos

* El bucket de origen y destino deben tener el control de versiones activado.
* El bucket de origen y destino deben estar en diferentes regiones de aws.
* S3 debe tener permisos para replicar objetos desde el bucket origen a el bucket destino en su nombre
* **[!]** Si el propietario del bucket tambien es propietario del objeto, el propietario del bucket tiene todos los permisos para replicar el objeto, si no, el propietario del objeto debe otorgar permisos al propietario del bucket de **Read** y **READ_ACP** via ACL object.
* El rol de IAM debe tener los permisos suficientes para replicar los objetos en el bucket destino.


¡

-   Objetos creados después de añadir una configuración de replicación.
    
-   Objetos sin cifrar.
    
-   Los objetos cifrados en reposo bajo claves administradas de Amazon S3 (SSE-S3) o claves maestras del cliente (CMK) almacenadas en AWS Key Management Service (SSE-KMS).
<!--stackedit_data:
eyJoaXN0b3J5IjpbNDkzMjY3ODk1LDQxODgwOTMxOSw0OTg3Mz
k2ODMsMTY3MzU5MjQ4Nyw0MTM3NDU0NjEsMTUzNzQ3NjE3MSwx
NjYzNjUxOTA2LC02ODczNzY1MzMsLTE0NTkxNDI1MywzNTg0OT
kxNzgsMTg0OTEyMjI2MywxODQ2MDUyNjMzLC01NDMzNjIzNDEs
LTQzMzMxOTU1OCwxOTEyNTQzMDI5LC0zNTkyNjcyMjQsLTEyND
Y4MzQ1NzVdfQ==
-->