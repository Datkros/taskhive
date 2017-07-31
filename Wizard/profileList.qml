import QtQuick 2.0
import QtQuick.Controls 1.4
import QtGraphicalEffects 1.0
Item {
    Text {
        id: profileTitle
        anchors.left: parent.left
        anchors.leftMargin: 30
        text: qsTr("Profiles")
        font.pointSize: 24
        color: "#fff"
    }
    Rectangle {
        height: 1
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: profileTitle.bottom
        anchors.topMargin: 5
    }
    ScrollView {
        anchors.top: profileTitle.bottom
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.topMargin: 31
        anchors.leftMargin: 30
        horizontalScrollBarPolicy: Qt.ScrollBarAlwaysOff
        verticalScrollBarPolicy: Qt.ScrollBarAlwaysOff
        ListView {
            anchors.fill: parent
            model: profiles
            delegate: Item {
                anchors.right: parent.right
                anchors.left: parent.left
                Rectangle {
                    anchors.fill: parent
                    Image {
                        id: securityIcon
                        source: "icon-search.svg"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.leftMargin: 10
                        anchors.rightMargin: 10
                        visible: false
                    }
                    ColorOverlay {
                       source: securityIcon
                       anchors.fill: securityIcon
                       color: "#fff"
                    }
                    Text {
                        id: textLink
                        anchors.left: securityIcon.right
                        text: link
                        font.pointSize: 18
                        color: "#fff"
                    }
                    Button {
                        anchors.leftMargin: 10
                        anchors.left: textLink.right
                        height: 25
                        width: 25
                    }
                }
            }
        }
    }
}
