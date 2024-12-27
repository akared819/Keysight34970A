#!../../bin/linux-x86_64/Keysight34970A

#- You may have to change Keysight34970A to something else
#- everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/Keysight34970A.dbd"
Keysight34970A_registerRecordDeviceDriver pdbbase
# -------ここから
dbLoadRecords("Keysight34970AApp/Db/Keysight34970A.db","dev=34970A")
epicsEnvSet("STREAM_PROTOCOL_PATH","${TOP}")
drvAsynSerialPortConfigure("34970A","/dev/ttyUSB1",0,0,0)
asynSetOption("34970A", -1, "baud","57600")
asynSetOption("34970A", -1, "bits","8")
asynSetOption("34970A", -1, "parity", "none") 
asynSetOption("34970A", -1, "stop","1")
asynSetOption("34970A", -1, "handshake", "xonxoff")
asynSetOption("34970A", -1, "clocal","Y")
asynSetOption("34970A", -1, "crtscts","N")
# -------ここまで追加

## Load record instances
#dbLoadRecords("db/Keysight34970A.db","user=pla")

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=pla"
