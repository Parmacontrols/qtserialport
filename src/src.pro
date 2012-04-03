TEMPLATE = lib
TARGET   = $$QT.serialport.name
MODULE   = serialport

load(qt_module)
load(qt_module_config)

DESTDIR = $$QT.serialport.libs
VERSION = $$QT.serialport.VERSION
DEFINES += QT_ADDON_SERIALPORT_LIB

QT += core-private

CONFIG += module create_prl
MODULE_PRI = ../modules/qt_serialport.pri

include($$PWD/src-lib.pri)
include(qt4support/qt4support.pri)

mac:QMAKE_FRAMEWORK_BUNDLE_NAME = $$QT.serialport.name

