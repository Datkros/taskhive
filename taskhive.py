#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import sys
from PyQt5.QtWidgets import QApplication
from PyQt5.QtCore import QObject, QUrl, pyqtSignal, QFileInfo, pyqtSlot, QFile, QMimeDatabase, QMimeType
from PyQt5.QtQml import qmlRegisterType, QQmlEngine, QQmlComponent
from PyQt5.QtQuick import QQuickView


class FileInfo(QObject):
    def __init__(self):
            QObject.__init__(self)
            self._filesize = None

    @pyqtSlot(str, result=int)
    def get_filesize(self, path):
        if path.startswith('file:///'):
            path = path.strip('file:///')
        file = QFileInfo(QFile(path))
        self._filesize = file.size()
        return self._filesize

    @pyqtSlot(str, result=str)
    def get_MIMETYPE(self, path):
        if path.startswith('file:///'):
            path = path.strip('file:///')
        file = QFileInfo(QFile(path))
        db = QMimeDatabase()
        MimeType = db.mimeTypeForFile(file)
        return MimeType.name()

    @pyqtSlot(str, result=str)
    def get_filename(self, path):
        if path.startswith('file:///'):
            path = path.strip('file:///')
        file = QFileInfo(QFile(path))
        return file.fileName()

class Taskhive(QApplication):
    def __init__(self, argv):
        QApplication.__init__(self, argv)


def main(argv, app):

    engine = QQmlEngine(app)
    engine.quit.connect(app.quit)
    component = QQmlComponent(engine)
    component.loadUrl(QUrl('main.qml'))
    if component.isReady():
        mainWindow = component.create()
        file = FileInfo()
        context = engine.rootContext()
        context.setContextProperty('FileInfo', file)

    else:
        print(component.errorString())

    sys.exit(app.exec_())

if __name__ == "__main__":
    app = Taskhive(sys.argv)
    main(sys.argv, app)

