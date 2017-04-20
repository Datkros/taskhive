import QtQuick 2.6
import QtQuick.Window 2.2

QtObject {
	property var controlWindow: Window {
		width: 500
		height: 500
		MainForm {
			id: test
		}
	}
	property var splashWindow: Splash {
        onTimeout: controlWindow.visible = true
    }
}