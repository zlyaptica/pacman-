TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

LIBS += -L"D:\Qt\work\3rdparty\SFML-2.3.2\lib"

CONFIG(release, debug|release):
LIBS += -lsfml-audio -lsfml-graphics -lsfml-main -lsfml-network -lsfml-window -lsfml-system

CONFIG(debug, debug|release):
LIBS += -lsfml-audio-d -lsfml-graphics-d -lsfml-main-d -lsfml-network-d -lsfml-window-d -lsfml-system-d

INCLUDEPATH += "D:\Qt\work\3rdparty\SFML-2.3.2\include"

SOURCES += main.cpp \
    bomg.cpp \
    game_types.cpp \
    ghost.cpp \
    ghost_manager.cpp \
    graphics.cpp \
    pacman.cpp \
    score.cpp \
    tools.cpp

HEADERS += \
    bomg.h \
    game_types.h \
    ghost.h \
    ghost_manager.h \
    graphics.h \
    pacman.h \
    score.h \
    tools.h \
    constants.h
include(deployment.pri)
qtcAddDeployment()
