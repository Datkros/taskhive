import QtQuick 2.1
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.1


Rectangle {
    id: toolbar
    color: "transparent"
    property alias honeycomb: honeycomb
    anchors {
        top: parent.top
        left: parent.left
        right: parent.right
    }
    anchors.topMargin: 10
    anchors.leftMargin: 30
    anchors.rightMargin: 30
    height: window.height * 0.15
    width: window.width
    Row {
        width: parent.width
        height: parent.height
        spacing: 20
        Rectangle {
            id: profilePicture
            width: 100
            height: 100
        }
        Column {
            width: parent.width - 120
            height: parent.height
            id: column
            spacing: 10
            RowLayout {
                id: toolBarTop
                width: parent.width
                height: parent.height / 2
                anchors.right: parent.right
                anchors.rightMargin: 0
                spacing: 5
                RatingHoneycomb {
                    id: honeycomb
                    visible: true
                    clip: false
                    Layout.fillHeight: false
                    Layout.fillWidth: false
                }
                SearchBar {
                    id: search
                    height: 38
                    transformOrigin: Item.Center
                    Layout.maximumWidth: 350
                    popupHeight: 0
                    Layout.fillHeight: false
                    Layout.fillWidth: true
                    anchors.leftMargin: 20
                    anchors.right: icons.left
                    anchors.rightMargin: 20
                    anchors.verticalCenter: toolBarTop.verticalCenter
                    resultBackgroundColor: "#0c0c0c"
                }
                Row {
                    id: icons
                    visible: true
                    Layout.fillWidth: false
                    anchors.topMargin: 10
                    anchors.right: toolBarTop.right
                    anchors.verticalCenter: toolBarTop.verticalCenter
                    spacing: 20
                    Image {
                        id: notificationIcon
                        source: "images/icon-notification.svg"
                    }
                    Image {
                        id: msgIcon
                        source: "images/icon-msg.svg"
                    }
                    Image {
                        id: contractsIcon
                        source: "images/icon-contract.svg"
                    }
                    Image {
                        id: trustIcon
                        source: "images/icon-trust.svg"
                    }
                }
            }
            Item {
                id: toolBarBottom
                width: parent.width
                height: parent.height / 4
                z: -1
                Text {
                    id: username
                    text: qsTr("vfxmaster")
                    font.pointSize: 22
                    color: "#fff"
                }
                Rectangle {
                    anchors.left: username.right
                    anchors.right: toolBarBottom.right
                    anchors.bottom: toolBarBottom.bottom
                    anchors.leftMargin: 10
                    height: 1
                }
            }

        }
    }

}
