import QtQuick 2.4

SplashScreen {
    id: splash
    color: "transparent"
    flags: Qt.SplashScreen
    property int timeoutInterval: 2000
        signal timeout
        x: (Screen.width - splashImage.width) / 2
        y: (Screen.height - splashImage.height) / 2
        width: splashImage.width
        height: splashImage.height

        Image {
            id: splashImage
            source: "logo.png"
            MouseArea {
                anchors.fill: parent
                onClicked: Qt.quit()
            }
        }
        Timer {
            interval: timeoutInterval; running: true; repeat: false
            onTriggered: {
                visible = false
                splash.timeout()
            }
        }
        Component.onCompleted: visible = true
}
