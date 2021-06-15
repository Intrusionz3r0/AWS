# Hoja de trucos de CCNA4
![enter image description here](https://wallpapercave.com/wp/wp4434685.jpg)


### Configuración Basica
```
Router# configure terminal
Router(config)# hostname R1
R1(config)# enable secret cisco123
R1(config)# line console 0
R1(config-line)# password cisco
R1(config-line)# login
R1(config-line)# exit
R1(config)# line vty 0 4
R1(config-line)#logging synchronous
R1(config-line)# password cisco
R1(config-line)# login
R1(config-line)# exit
```

### Configurar SSH

```
R1(config)# ip domain name admin
R1(config)# crypto key generate rsa
R1(config)# username admin password admin
R1(config)# ip ssh version 2
R1(config)# line vty 0  15
R1(config-line)# transport input ssh
R1(config-line)# login local
```


### Ruta por defecto

```
ip route 0.0.0.0 0.0.0.0 s0/0/1
router ospf 1
default-information originate
```

### Ruta statica

```
ip route [MiPOOL] [SU MASCARA] [INTERFAZ]
router ospf 1
default-information originate
```

### Configurar OSPF
[Máscaras wildcards](https://es.wikipedia.org/wiki/M%C3%A1scara_wildcard)

```
sh ip ro c
router ospf 1
network 172.16.1.0 0.0.0.X area 0
```

### NAT por sobrecarga (PAT)
```
R1(config)# access-list 1 permit 172.16.0.0 0.0.255.255
R1(config)# ip nat inside source list 1 interface s0/0/0 overload
```



### NAT Dinamico
```bash
ip nat pool POOL_LAN2 202.1.12.1 202.1.12.14 netmask 255.255.255.240
access list 10 permit 172.16.0.254 0.0.0.255
ip nat inside source list 10 pool POOL_LAN2
```


### SNMP

```bash
snmp-server community SNMPLAB12 ro
snmp-server community SNMPLAB12 rw
show run | include snmp-server
```
