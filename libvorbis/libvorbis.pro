#-------------------------------------------------
#
# Project created by QtCreator 2013-07-25T21:25:41
#
#-------------------------------------------------

QT       -= core gui

LIBS += -logg

TARGET = libvorbis
TEMPLATE = lib

DEFINES += LIBVORBIS_LIBRARY

SOURCES += \
    window.c \
    synthesis.c \
    smallft.c \
    sharedbook.c \
    res0.c \
    registry.c \
    psy.c \
    mdct.c \
    mapping0.c \
    lsp.c \
    lpc.c \
    lookup.c \
    info.c \
    floor1.c \
    floor0.c \
    envelope.c \
    codebook.c \
    block.c \
    bitrate.c \
    analysis.c

HEADERS += \
    window.h \
    smallft.h \
    registry.h \
    psy.h \
    mdct.h \
    lsp.h \
    lpc.h \
    lookup_data.h \
    lookup.h \
    envelope.h \
    codec_internal.h \
    codebook.h \
    bitrate.h

symbian {
    MMP_RULES += EXPORTUNFROZEN
    TARGET.UID3 = 0xE1760B3F
    TARGET.CAPABILITY = 
    TARGET.EPOCALLOWDLLDATA = 1
    addFiles.sources = libvorbis.dll
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
