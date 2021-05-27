# Hoja de trucos de CCNA4
![enter image description here](https://wallpapercave.com/wp/wp4434685.jpg)





### Ruta estatica

```
ip route 0.0.0.0 0.0.0.0 s0/0/1
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



### NAT
```bash
access-list 1 permit [rango-de-red] 0.0.255.255
ip nat inside source list 1 int [Apunte-a-exterior] overload
ip nat inside 
ip nat outside
```


### SNMP

```bash
snmp-server community SNMPLAB12 ro
snmp-server community SNMPLAB12 rw
show run | include snmp-server
```