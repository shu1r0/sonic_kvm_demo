# clos


## Management Node

install ubuntu.
```bash
$ wget "https://cloud-images.ubuntu.com/focal/current/focal-server-cloudimg-amd64.img"
```

## FRRouting Config

### spine1

```
conf t
router bgp 65100
 bgp router-id 10.1.1.1
 no bgp ebgp-requires-policy
 bgp bestpath as-path multipath-relax
 neighbor FABRIC peer-group
 neighbor FABRIC remote-as external
 neighbor FABRIC capability extended-nexthop
 neighbor Ethernet0 interface peer-group FABRIC
 neighbor Ethernet4 interface peer-group FABRIC
 address-family ipv4 unicast
  network 10.20.30.0/24
  network 10.20.31.0/24
 exit-address-family
```

### spine2

```
conf t
router bgp 65100
 bgp router-id 10.2.2.2
 no bgp ebgp-requires-policy
 bgp bestpath as-path multipath-relax
 neighbor FABRIC peer-group
 neighbor FABRIC remote-as external
 neighbor FABRIC capability extended-nexthop
 neighbor Ethernet0 interface peer-group FABRIC
 neighbor Ethernet4 interface peer-group FABRIC
 address-family ipv4 unicast
  network 10.20.33.0/24
  network 10.20.34.0/24
 exit-address-family
```

### leaf1

```
conf t
router bgp 65200
 bgp router-id 10.3.3.3
 no bgp ebgp-requires-policy
 bgp bestpath as-path multipath-relax
 neighbor FABRIC peer-group
 neighbor FABRIC remote-as external
 neighbor FABRIC capability extended-nexthop
 neighbor Ethernet0 interface peer-group FABRIC
 neighbor Ethernet4 interface peer-group FABRIC
 address-family ipv4 unicast
  network 10.20.30.0/24
  network 10.20.33.0/24
 exit-address-family
```

### leaf2

```
conf t
router bgp 65201
 bgp router-id 10.4.4.4
 no bgp ebgp-requires-policy
 bgp bestpath as-path multipath-relax
 neighbor FABRIC peer-group
 neighbor FABRIC remote-as external
 neighbor FABRIC capability extended-nexthop
 neighbor Ethernet0 interface peer-group FABRIC
 neighbor Ethernet4 interface peer-group FABRIC
 address-family ipv4 unicast
  network 10.20.31.0/24
  network 10.20.34.0/24
 exit-address-family
```


## Telemetry Examples

### COUNTERS_DB
```
cd /home/shu1r0/go/src/github.com/jipanyang/gnxi/gnmi_get
go run gnmi_get.go  -xpath_target COUNTERS_DB -xpath COUNTERS_PORT_NAME_MAP -target_addr 10.30.30.2:8080 -insecure true 
```
<!-- 
```
go run gnmi_get.go  -xpath_target COUNTERS_DB -xpath GEARBOX_TABLE -target_addr 10.30.30.2:8080 -insecure true 
``` -->


### APPL_DB
```
go run gnmi_get.go  -xpath_target APPL_DB -xpath INTF_TABLE -target_addr 10.30.30.2:8080 -insecure true 
```

```
go run gnmi_get.go  -xpath_target APPL_DB -xpath ROUTE_TABLE -target_addr 10.30.30.2:8080 -insecure true 
```

### CONFIG_DB

```
go run gnmi_get.go  -xpath_target CONFIG_DB -xpath PORT -target_addr 10.30.30.2:8080 -insecure true 
```

```
go run gnmi_get.go  -xpath_target CONFIG_DB -xpath SYSTEM_INTERFACE -target_addr 10.30.30.2:8080 -insecure true 
```


## OpenConfig

```
go run gnmi_capabilities.go -target_addr 10.30.30.2:8080 -target_name sonic -notls
```

```
go run gnmi_capabilities.go -target_addr 10.30.30.2:8080 -target_name sonic -notls
```