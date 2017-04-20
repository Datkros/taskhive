#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
from PyQt5.QtWidgets import QApplication
from PyQt5.QtCore import QObject, QUrl, pyqtSignal
from PyQt5.QtQml import qmlRegisterType, QQmlEngine, QQmlComponent
from PyQt5.QtQuick import QQuickView


class Taskkhive(QApplication):
    def __init__(self, argv):
        QApplication.__init__(self, argv)


def main(argv, app):

    engine = QQmlEngine(app)
    engine.quit.connect(app.quit)
    component = QQmlComponent(engine)
    component.loadUrl(QUrl('main_window.qml'))
    if component.isReady():
        mainWindow = component.create()
    else:
        print(component.errorString())

    sys.exit(app.exec_())

if __name__ == "__main__":
    app = Taskkhive(sys.argv)
    main(sys.argv, app)

