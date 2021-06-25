#  Migrar de instancias de generación anterior a instancias de última generación.

![enter image description here](https://www.programaenlinea.net/wp-content/uploads/2020/12/aws.jpg)


**Tipos de instacias:**


 [Instancias de generación anterior.](https://aws.amazon.com/ec2/previous-generation/)
 [Instancias de última generación.](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/instance-types.html#current-gen-instances)
 

* Los siguientes procedimientos de migración se pueden realizar en Windows Server versión 2008 R2 y posteriores.

* **[!] Importante** Debe usar PowerShell versión 3.0 o posterior para realizar correctamente la actualización (**As a Administrador**).
* **[!] Importante** Antes de seguir los pasos de este procedimiento, le recomendamos que cree una copia de seguridad de la instancia.


### **¿Que instancias estan basadas en nitro?**
-   **Virtualizadas**: C5, C5a, C5ad, C5d, C5n, D3, D3en, G4, I3en, M5, M5a, M5ad, M5d, M5dn, M5n, M5zn,  `p3dn.24xlarge`, R5, R5a, R5ad, R5b, R5d, R5dn, R5n, T3, T3a, high memory (u-*), and z1d
    
-   **Bare metal**:  `c5.metal`,  `c5d.metal`,  `c5n.metal`,  `i3.metal`,  `i3en.metal`,  `m5.metal`,  `m5d.metal`,  `m5dn.metal`,  `m5n.metal`,  `m5zn.metal`,  `r5.metal`,  `r5b.metal`,  `r5d.metal`,  `r5dn.metal`,  `r5n.metal`,  `u-6tb1.metal`,  `u-9tb1.metal`,  `u-12tb1.metal`,  `u-18tb1.metal`,  `u-24tb1.metal`, and  `z1d.metal`



# Instalación de PV Drivers

* Como práctica recomendada, recomendamos actualizar siempre a los controladores más recientes para instancias de Windows en AWS.

* **[!]** Aunque los controladores AWS PV no se utilizan en el sistema Nitro, aún debe actualizarlos si tiene versiones anteriores de Citrix PV o AWS PV


# ENA Drivers


Actualice al controlador del Adaptador de red elástico más reciente para asegurarse de que todas las funciones de red sean compatibles. Si lanzó su instancia y no tiene la red mejorada habilitada, debe descargar e instalar el controlador del adaptador de red requerido en su instancia.

* Todos los tipos de instancias de la generación actual admiten redes mejoradas, excepto las instancias T2.
* Las instancias de la generación actual usan ENA para redes mejoradas, excepto para las instancias C4, D2 y **M4** más pequeñas que `m4.16xlarge`.




# NVMe

Los controladores AWS NVMe se utilizan para interactuar con Amazon EBS y volúmenes de almacenamiento de instancias SSD que están expuestos como dispositivos de bloque NVMe en el sistema Nitro para un mejor rendimiento.

**[!] importante** Las siguientes instrucciones se modifican específicamente para cuando instala o actualiza AWS NVMe en una instancia de generación anterior con la intención de migrar la instancia al tipo de instancia de última generación.

