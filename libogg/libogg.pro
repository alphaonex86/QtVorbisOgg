#-------------------------------------------------
#
# Project created by QtCreator 2013-07-25T21:04:35
#
#-------------------------------------------------

QT       -= core gui

TARGET = libogg
TEMPLATE = lib

DEFINES += LIBOGG_LIBRARY

SOURCES += \
    framing.c \
    bitwise.c

HEADERS += \
    os_types.h \
    ogg.h

symbian {
    MMP_RULES += EXPORTUNFROZEN
    TARGET.UID3 = 0xE099BB4C
    TARGET.CAPABILITY = 
    TARGET.EPOCALLOWDLLDATA = 1
    addFiles.sources = libogg.dll
    addFiles.path = !:/sys/bin
    DEPLOYMENT += addFiles
}

unix:!symbian {
    maemo5 {
        target.path = /opt/usr/lib
    } else {
        target.path = /usr/lib
    }
    INSTALLS += target
}
