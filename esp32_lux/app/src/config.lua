-- Socket Config
-- UDP UPnP
MC_PORT=1900
LOCAL_ADDR='0.0.0.0'
MC_ADDR='239.255.255.250'
-- TCP Server
SRV_PORT=80

--------------------
-- Wifi Access Point
-- config
WIFI_AP_CONFIG = {
    ssid='LuxSensor-ESP32',
    pwd='paravosp@p@',
    max=1
}

--------------
-- Device info
DEV = {
    CHIP_ID=string.format('%x', node.chipid()),
    SN='SN-ESP32-696',
    MN='SmartThingsCommunity',
    NAME='LuxSensorESP32',
    TYPE='LAN',
    ext_uuid=nil,
    HUB={ addr=nil, port=nil },
    cache={}
}