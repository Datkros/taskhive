import QtQuick 2.1
import QtQuick.Window 2.2
import QtQuick.Controls 1.2

QtObject {
    property var controlWindow: Window {
        id: window
        minimumWidth: 1200
        minimumHeight: 800
        color: "#0c0c0c"
        title: "Taskhive"
        TopBar {
            id: toolbar
            width: window.width
            height: window.height * 0.15
        }
        Rectangle {
            id: requests
            height: window.height * 0.40
            width: parent.width
            anchors.top: toolbar.bottom
            color: "transparent"
            Rectangle {
                color: "transparent"
                id: requestsTitle
                anchors.top: parent.top
                width: parent.width
                height: 45
                anchors.topMargin: 50
                Item {
                    anchors.leftMargin: 30
                    anchors.rightMargin: 30
                    anchors.left: requestsTitle.left
                    anchors.right: requestsTitle.right
                    width: parent.width - 20
                    height: parent.height
                    Text {
                        id: requestsText
                        anchors.left: parent.left
                        text: qsTr("Requests")
                        font.pointSize: 22
                        color: "#fff"
                    }
                    Row {
                        anchors.right: parent.right
                        height: parent.height
                        spacing: 20
                        Image {
                            id: iconAdd
                            source: "icon-add.svg"
                        }
                        Image {
                            id: iconFilter
                            source: "icon-filter.svg"
                        }
                        Button {
                            height: 100
                            width: 100
                            text: "Click me plz"
                            onClicked: {
                                var fileComponent = Qt.createComponent("Wizard.qml")
                                console.log(fileComponent.errorString())
                                var win = fileComponent.createObject(window)
                                win.show()

                            }
                        }
                    }
                }
                Rectangle {
                    anchors.bottom: requestsTitle.bottom
                    height: 1
                    width: parent.width
                }
            }
        }
        Rectangle {
            id: offers
            height: window.height * 0.40
            width: parent.width
            anchors.top: requests.bottom
            color: "transparent"
            Rectangle {
                color: "transparent"
                id: offersTitle
                width: parent.width
                height: 45
                Item {
                    anchors.leftMargin: 30
                    anchors.rightMargin: 30
                    anchors.left: offersTitle.left
                    anchors.right: offersTitle.right
                    width: parent.width - 20
                    height: parent.height
                    Text {
                        id: offersText
                        anchors.left: parent.left
                        text: qsTr("Offers")
                        font.pointSize: 22
                        color: "#fff"
                    }
                    Row {
                        anchors.right: parent.right
                        height: parent.height
                        spacing: 20
                        Image {
                            id: iconAdd2
                            source: "icon-add.svg"
                        }
                        Image {
                            id: iconFilter2
                            source: "icon-filter.svg"
                        }
                    }
                }
                Rectangle {
                anchors.bottom: offersTitle.bottom
                height: 1
                width: parent.width
            }
        }
        }
        Image {
             id: img
             visible: false
             source: "background.png"
             height: window.height * 0.15
             fillMode: Image.PreserveAspectFit
        }

         Row {
             anchors.bottom: parent.bottom
             Repeater {
                 model: Math.ceil(window.width / img.width)
                 ShaderEffectSource {
                     sourceItem: img
                     height: img.height
                     width: img.width
                 }
             }
         }
    }
    property var splashWindow: Splash {
        onTimeout: controlWindow.visible = true
    }
}
