#!/bin/bash

sudo cat <<'EOF' | sudo tee /etc/sonic/config_db.json
{
  "DEVICE_METADATA": {
      "localhost": {
          "hwsku": "Force10-S6000",
          "platform": "x86_64-kvm_x86_64-r0",
          "mac": "08:00:27:f6:18:02",
          "hostname": "spine2",
          "type": "LeafRouter"
      }
  },
  "TELEMETRY_CLIENT": {
    "Global": {
        "encoding": "JSON_IETF",
        "retry_interval": "30",
        "src_ip": "10.30.30.3",
        "unidirectional": "true"
    },
    "DestinationGroup_HS": {
        "dst_addr": "10.30.30.1:8081"
    },
    "Subscription_HS_RDMA": {
        "dst_group": "HS",
        "path_target": "COUNTERS_DB",
        "paths": "COUNTERS/Ethernet*,COUNTERS_PORT_NAME_MAP",
        "report_interval": "5000",
        "report_type": "periodic"
    }
  },
  "MGMT_INTERFACE": {
    "eth0|10.30.30.3/24": {
        "gwaddr": "10.30.30.1"
    }
  }, 
  "PORT": {
      "Ethernet0": {
          "lanes": "25,26,27,28",
          "alias": "fortyGigE0/0",
          "index": "0",
          "speed": "40000",
          "admin_status": "up",
          "mtu": "9100"
      },
      "Ethernet4": {
          "lanes": "29,30,31,32",
          "alias": "fortyGigE0/4",
          "index": "1",
          "speed": "40000",
          "admin_status": "up",
          "mtu": "9100"
      },
      "Ethernet8": {
          "lanes": "33,34,35,36",
          "alias": "fortyGigE0/8",
          "index": "2",
          "speed": "40000",
          "admin_status": "up",
          "mtu": "9100"
      },
      "Ethernet12": {
          "lanes": "37,38,39,40",
          "alias": "fortyGigE0/12",
          "index": "3",
          "speed": "40000",
          "admin_status": "up",
          "mtu": "9100"
      },
      "Ethernet16": {
          "lanes": "45,46,47,48",
          "alias": "fortyGigE0/16",
          "index": "4",
          "speed": "40000",
          "admin_status": "up",
          "mtu": "9100"
      },
      "Ethernet20": {
          "lanes": "41,42,43,44",
          "alias": "fortyGigE0/20",
          "index": "5",
          "speed": "40000",
          "admin_status": "up",
          "mtu": "9100"
      },
      "Ethernet24": {
          "lanes": "1,2,3,4",
          "alias": "fortyGigE0/24",
          "index": "6",
          "speed": "40000",
          "admin_status": "up",
          "mtu": "9100"
      },
      "Ethernet28": {
          "lanes": "5,6,7,8",
          "alias": "fortyGigE0/28",
          "index": "7",
          "speed": "40000",
          "admin_status": "up",
          "mtu": "9100"
      },
      "Ethernet32": {
          "lanes": "13,14,15,16",
          "alias": "fortyGigE0/32",
          "index": "8",
          "speed": "40000",
          "admin_status": "up",
          "mtu": "9100"
      },
      "Ethernet36": {
          "lanes": "9,10,11,12",
          "alias": "fortyGigE0/36",
          "index": "9",
          "speed": "40000",
          "admin_status": "up",
          "mtu": "9100"
      },
      "Ethernet40": {
          "lanes": "17,18,19,20",
          "alias": "fortyGigE0/40",
          "index": "10",
          "speed": "40000",
          "admin_status": "up",
          "mtu": "9100"
      },
      "Ethernet44": {
          "lanes": "21,22,23,24",
          "alias": "fortyGigE0/44",
          "index": "11",
          "speed": "40000",
          "admin_status": "up",
          "mtu": "9100"
      },
      "Ethernet48": {
          "lanes": "53,54,55,56",
          "alias": "fortyGigE0/48",
          "index": "12",
          "speed": "40000",
          "admin_status": "up",
          "mtu": "9100"
      },
      "Ethernet52": {
          "lanes": "49,50,51,52",
          "alias": "fortyGigE0/52",
          "index": "13",
          "speed": "40000",
          "admin_status": "up",
          "mtu": "9100"
      },
      "Ethernet56": {
          "lanes": "57,58,59,60",
          "alias": "fortyGigE0/56",
          "index": "14",
          "speed": "40000",
          "admin_status": "up",
          "mtu": "9100"
      },
      "Ethernet60": {
          "lanes": "61,62,63,64",
          "alias": "fortyGigE0/60",
          "index": "15",
          "speed": "40000",
          "admin_status": "up",
          "mtu": "9100"
      },
      "Ethernet64": {
          "lanes": "69,70,71,72",
          "alias": "fortyGigE0/64",
          "index": "16",
          "speed": "40000",
          "admin_status": "up",
          "mtu": "9100"
      },
      "Ethernet68": {
          "lanes": "65,66,67,68",
          "alias": "fortyGigE0/68",
          "index": "17",
          "speed": "40000",
          "admin_status": "up",
          "mtu": "9100"
      },
      "Ethernet72": {
          "lanes": "73,74,75,76",
          "alias": "fortyGigE0/72",
          "index": "18",
          "speed": "40000",
          "admin_status": "up",
          "mtu": "9100"
      },
      "Ethernet76": {
          "lanes": "77,78,79,80",
          "alias": "fortyGigE0/76",
          "index": "19",
          "speed": "40000",
          "admin_status": "up",
          "mtu": "9100"
      },
      "Ethernet80": {
          "lanes": "109,110,111,112",
          "alias": "fortyGigE0/80",
          "index": "20",
          "speed": "40000",
          "admin_status": "up",
          "mtu": "9100"
      },
      "Ethernet84": {
          "lanes": "105,106,107,108",
          "alias": "fortyGigE0/84",
          "index": "21",
          "speed": "40000",
          "admin_status": "up",
          "mtu": "9100"
      },
      "Ethernet88": {
          "lanes": "113,114,115,116",
          "alias": "fortyGigE0/88",
          "index": "22",
          "speed": "40000",
          "admin_status": "up",
          "mtu": "9100"
      },
      "Ethernet92": {
          "lanes": "117,118,119,120",
          "alias": "fortyGigE0/92",
          "index": "23",
          "speed": "40000",
          "admin_status": "up",
          "mtu": "9100"
      },
      "Ethernet96": {
          "lanes": "125,126,127,128",
          "alias": "fortyGigE0/96",
          "index": "24",
          "speed": "40000",
          "admin_status": "up",
          "mtu": "9100"
      },
      "Ethernet100": {
          "lanes": "121,122,123,124",
          "alias": "fortyGigE0/100",
          "index": "25",
          "speed": "40000",
          "admin_status": "up",
          "mtu": "9100"
      },
      "Ethernet104": {
          "lanes": "81,82,83,84",
          "alias": "fortyGigE0/104",
          "index": "26",
          "speed": "40000",
          "admin_status": "up",
          "mtu": "9100"
      },
      "Ethernet108": {
          "lanes": "85,86,87,88",
          "alias": "fortyGigE0/108",
          "index": "27",
          "speed": "40000",
          "admin_status": "up",
          "mtu": "9100"
      },
      "Ethernet112": {
          "lanes": "93,94,95,96",
          "alias": "fortyGigE0/112",
          "index": "28",
          "speed": "40000",
          "admin_status": "up",
          "mtu": "9100"
      },
      "Ethernet116": {
          "lanes": "89,90,91,92",
          "alias": "fortyGigE0/116",
          "index": "29",
          "speed": "40000",
          "admin_status": "up",
          "mtu": "9100"
      },
      "Ethernet120": {
          "lanes": "101,102,103,104",
          "alias": "fortyGigE0/120",
          "index": "30",
          "speed": "40000",
          "admin_status": "up",
          "mtu": "9100"
      },
      "Ethernet124": {
          "lanes": "97,98,99,100",
          "alias": "fortyGigE0/124",
          "index": "31",
          "speed": "40000",
          "admin_status": "up",
          "mtu": "9100"
      }
  },
  "FLEX_COUNTER_TABLE": {
      "ACL": {
          "FLEX_COUNTER_STATUS": "disable",
          "FLEX_COUNTER_DELAY_STATUS": "true",
          "POLL_INTERVAL": "10000"
      }
  },
  "LOOPBACK_INTERFACE": {
      "Loopback0|10.1.0.1/32": {}
  },
  "INTERFACE": {
    "Ethernet0|10.20.33.1/24": {},
    "Ethernet4|10.20.34.1/24": {},
    "Ethernet8": {},
    "Ethernet12": {},
    "Ethernet16": {},
    "Ethernet20": {},
    "Ethernet24": {},
    "Ethernet28": {},
    "Ethernet32": {},
    "Ethernet36": {},
    "Ethernet40": {},
    "Ethernet44": {},
    "Ethernet48": {},
    "Ethernet52": {},
    "Ethernet56": {},
    "Ethernet60": {},
    "Ethernet64": {},
    "Ethernet68": {},
    "Ethernet72": {},
    "Ethernet76": {},
    "Ethernet80": {},
    "Ethernet84": {},
    "Ethernet88": {},
    "Ethernet92": {},
    "Ethernet96": {},
    "Ethernet100": {},
    "Ethernet104": {},
    "Ethernet108": {},
    "Ethernet112": {},
    "Ethernet116": {},
    "Ethernet120": {},
    "Ethernet124": {}
  }
}
EOF

sudo config reload -f
