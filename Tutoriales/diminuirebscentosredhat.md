
# Disminuir el volumen de un EBS en Centos/RedHat.

![enter image description here](https://devopscube.com/wp-content/uploads/2016/08/ebs-ec2-attach-1160x468.png.webp)

## Pasos a seguir.

 1. Asociamos el volumen a disminuir en la instancia.

 2. Creamos el volumen con el tamaño deseado y lo asociamos a la instancia.

 3. Nos loguemos.

4. Mostramos los discos asociados.
```bash
[ec2-user@ip-172-31-12-208 ~]$ lsblk

NAME    MAJ:MIN RM SIZE RO TYPE MOUNTPOINT
xvda    202:0    0  10G  0 disk
├─xvda1 202:1    0   1M  0 part
└─xvda2 202:2    0  10G  0 part /
xvdf    202:80   0  20G  0 disk
xvdg    202:96   0  13G  0 disk
```

5. Formatearemos la unidad nueva, en este caso es **xvdg**.

> Importante formatear en el sistema de archivos soportado por el Sistema Operativo.

```bash
[ec2-user@ip-172-31-12-208 ~]$ sudo mkfs -t ext3 /dev/xvdg
meta-data=/dev/xvdg              isize=512    agcount=4, agsize=851968 blks
         =                       sectsz=512   attr=2, projid32bit=1
         =                       crc=1        finobt=1, sparse=1, rmapbt=0
         =                       reflink=1
data     =                       bsize=4096   blocks=3407872, imaxpct=25
         =                       sunit=0      swidth=0 blks
naming   =version 2              bsize=4096   ascii-ci=0, ftype=1
log      =internal log           bsize=4096   blocks=2560, version=2
         =                       sectsz=512   sunit=0 blks, lazy-count=1
realtime =none                   extsz=4096   blocks=0, rtextents=0
```

6. Crearemos las carpetas para montar los archivos.

```bash
[ec2-user@ip-172-31-12-208 ~]$ sudo mkdir /mnt/vol900
[ec2-user@ip-172-31-12-208 ~]$ sudo mkdir /mnt/vol400
```
7. Montamos los volúmenes

```bash
[ec2-user@ip-172-31-12-208 ~]$ sudo mount /dev/xvdf /mnt/vol900
[ec2-user@ip-172-31-12-208 ~]$ sudo mount /dev/xvdg /mnt/vol400
```

8. Movemos la información de disco a disco.
```bash
[ec2-user@ip-172-31-12-208 ~]$ sudo rsync -axv /mnt/vol900/ /mnt/vol400/
```
Puedes obtener mas información aqui: [RSYNC.](https://ss64.com/bash/rsync.html)

9. Esperar.
