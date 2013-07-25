#-------------------------------------------------
#
# Project created by QtCreator 2013-07-25T21:13:17
#
#-------------------------------------------------

QT       -= core gui

TARGET = libvorbisfile
TEMPLATE = lib

DEFINES += LIBVORBISFILE_LIBRARY

SOURCES += \
    vorbisfile.c

LIBS += -logg -lvorbis

HEADERS +=

symbian {
    MMP_RULES += EXPORTUNFROZEN
    TARGET.UID3 = 0xE6F74641
    TARGET.CAPABILITY = 
    TARGET.EPOCALLOWDLLDATA = 1
    addFiles.sources = libvorbisfile.dll
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
