CONFIG += qt debug thread
CONFIG -= app_bundle
QT -= gui
QT += network
INCLUDEPATH+=/usr/local/include
LIBS += -ljack -lm -framework CoreAudio
TARGET = jacktrip
DEFINES += APP_NAME=${APP_NAME_QUOTES} __MAC_OSX__
DESTDIR = .
QMAKE_CLEAN += ./$APP_NAME
target.path = /usr/bin
INSTALLS += target

#TEMPLATE = app
#TARGET = jacktrip
#DEPENDPATH += .
#INCLUDEPATH += .

# Input
HEADERS += DataProtocol.h \
           JackAudioInterface.h \
           JackTrip.h \
           jacktrip_globals.h \
           jacktrip_types.h \
           JackTripThread.h \
           JackTripWorker.h \
           JackTripWorkerMessages.h \
           LoopBack.h \
           NetKS.h \
           PacketHeader.h \
           ProcessPlugin.h \
           RingBuffer.h \
           RingBufferWavetable.h \
           Settings.h \
           TestRingBuffer.h \
           ThreadPoolTest.h \
           UdpDataProtocol.h \
           UdpMasterListener.h \
           jacktrip_tests.cpp
SOURCES += DataProtocol.cpp \
           JackAudioInterface.cpp \
           JackTrip.cpp \
           jacktrip_globals.cpp \
           jacktrip_main.cpp \
           jacktrip_tests.cpp \
           JackTripThread.cpp \
           JackTripWorker.cpp \
           LoopBack.cpp \
           PacketHeader.cpp \
           ProcessPlugin.cpp \
           RingBuffer.cpp \
           Settings.cpp \
           tests.cpp \
           UdpDataProtocol.cpp \
           UdpMasterListener.cpp