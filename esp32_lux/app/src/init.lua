--  ESP32 FW ADDED MODULES: file,http,i2c,net,node,sjson,tmr,wifi

-- Load config & modules
dofile('config.lua')
dofile('wifi.lua')
--dofile('device_control.lua')
dofile('server.lua')
--dofile('upnp.lua')

---------------------------
--GLOBAL VARIALBES

WIFI_DIS_COUNT = 0

---------------------------
-- Init Device Access Point
--print('access point ready...')
if wifi.getmode() ~= wifi.STATION then
    wifi.mode(wifi.SOFTAP, true)
    wifi.ap.config(WIFI_AP_CONFIG)
end

wifi.start()
-----------------------------

----------------------------
-- init server
server_start()

    ----------------------------
    -- tsl2561
    --SDA_PIN = 6 -- sda pin, GPIO12
    --SCL_PIN = 5 -- scl pin, GPIO14
    --tsl2561 = require("tsl2561")
    --tsl2561.init(SDA_PIN, SCL_PIN)
    --lux = tsl2561.readVisibleLux()

    -- release module
    --tsl2561 = nil
    --package.loaded["tsl2561"]=nil