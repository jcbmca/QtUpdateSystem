QT       += network

QT       -= gui

TARGET = QtUpdateSystem
TEMPLATE = lib

DEFINES += QTUPDATESYSTEM_LIBRARY

Release:DEFINES += NOLOGDEBUG NOLOGTRACE

INCLUDEPATH += ./QtLog/

SOURCES += \
    src/operations/addoperation.cpp \
    src/updater/downloadmanager.cpp \
    src/updater/filemanager.cpp \
    src/operations/operation.cpp \
    src/operations/patchoperation.cpp \
    src/operations/removedirectoryoperation.cpp \
    src/operations/removeoperation.cpp \
    src/common/package.cpp \
    src/common/version.cpp \
    src/packagemanager.cpp \
    src/packager.cpp \
    src/common/files.cpp \
    src/common/file.cpp \
    src/packager/compressfiletask.cpp \
    src/packager/patchfiletask.cpp \
    src/common/exception.cpp \
    src/packager/taskinfo.cpp \
    src/updater.cpp \
    QtLog/qtlog.cpp \
    src/common/packages.cpp \
    src/common/jsonutil.cpp

HEADERS +=\
    src/qtupdatesystem_global.h \
    src/operations/addoperation.h \
    src/updater/downloadmanager.h \
    src/updater/filemanager.h \
    src/operations/operation.h \
    src/operations/patchoperation.h \
    src/operations/removedirectoryoperation.h \
    src/operations/removeoperation.h \
    src/common/package.h \
    src/common/version.h \
    src/packagemanager.h \
    src/packager.h \
    src/common/files.h \
    src/common/file.h \
    src/packager/compressfiletask.h \
    src/packager/patchfiletask.h \
    src/common/exception.h \
    src/packager/taskinfo.h \
    src/updater.h \
    QtLog/qtlog.h \
    src/common/packages.h \
    src/common/jsonutil.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}
