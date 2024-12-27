TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = Keysight34970A
# Keysight34970A.dbd will be created and installed
DBD += Keysight34970A.dbd

# Keysight34970A.dbd will be made up from these files:
Keysight34970A_DBD += base.dbd
Keysight34970A_DBD += asyn.dbd
Keysight34970A_DBD += stream.dbd
Keysight34970A_DBD += drvAsynSerialPort.dbd

# Include dbd files from all support applications:
#Keysight34970A_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#Keysight34970A_LIBS += xxx

# Keysight34970A_registerRecordDeviceDriver.cpp derives from Keysight34970A.dbd
Keysight34970A_SRCS += Keysight34970A_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
Keysight34970A_SRCS_DEFAULT += Keysight34970AMain.cpp
Keysight34970A_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#Keysight34970A_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
Keysight34970A_LIBS += $(EPICS_BASE_IOC_LIBS)
Keysight34970A_LIBS += asyn
Keysight34970A_LIBS += stream

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

