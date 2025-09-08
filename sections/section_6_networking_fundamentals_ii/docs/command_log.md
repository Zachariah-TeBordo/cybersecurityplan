# Command Log – Section 6

enable
configure terminal
vlan 10
 name USERS_V10
vlan 20
 name USERS_V20
exit
interface gigabitEthernet1/0/1
 switchport
 switchport mode access
 switchport access vlan 10
 spanning-tree portfast
 description PC-A in VLAN10
exit
interface gigabitEthernet1/0/2
 switchport
 switchport mode access
 switchport access vlan 20
 spanning-tree portfast
 description PC-B in VLAN20
exit
interface vlan 10
 ip address 192.168.10.1 255.255.255.0
 no shutdown
 description Gateway for VLAN10
exit
interface vlan 20
 ip address 192.168.20.1 255.255.255.0
 no shutdown
 description Gateway for VLAN20
exit
ip routing
end
write memory

show vlan brief
show ip interface brief
show ip route
