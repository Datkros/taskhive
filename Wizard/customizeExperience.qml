import QtQuick 2.0
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.4
Rectangle {
    color: "transparent"
    Text {
            id: title
            anchors.left: parent.left
            anchors.top: parent.top
            text: qsTr("Startup Wizard")
            font.pointSize: 42
            font.bold: true
            color: "#fff"
        }
    Text {
        id: title2
        anchors.top: title.bottom
        text: qsTr("Control the volume")
        font.pointSize: 36
        color: "#fff"
    }
    Text {
        id: uniqueCustomizeText
        text: qsTr("Customize your experience")
        font.pointSize: 32
        color: "#fff"
        anchors.top: title2.bottom
    }
    Rectangle {
        id: radioRectangle
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: uniqueCustomizeText.bottom
        anchors.bottom: buttons.top
        color: "transparent"
        Column{
            anchors.fill: parent
            Row {
                anchors.left: parent.left
                anchors.right: parent.right
                Rectangle {
                    anchors.fill: parent
                    color: "transparent"
                    RadioButton {
                        id: noisy
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        style: RadioButtonStyle {
                            label: Text {
                                font.pointSize: 28
                                text: "Noisy"
                                color: "#fff"
                            }
                            indicator: Rectangle {
                                    implicitWidth: 21
                                    implicitHeight: 21
                                    radius: 16
                                    border.color: control.activeFocus ? "darkblue" : "gray"
                                    border.width: 1
                                    Rectangle {
                                        anchors.fill: parent
                                        visible: control.checked
                                        color: "#555"
                                        radius: 9
                                        anchors.margins: 4
                                    }
                            }
                        }
                     }

                        Text {
                            anchors.right: parent.right
                            font.pointSize: 18
                            color: "#fff"
                            text: qsTr("You will see <i>all</i> posts from <i>all</i> users, except the ones you manually ignore. This includes spam and attempted scams.")
                            verticalAlignment: Text.AlignTop
                            wrapMode: Text.WordWrap
                            width: parent.width - noisy.width - 20
                        }
    }
            }
            Rectangle {
                anchors.left: parent.left
                anchors.right: parent.right
                visible: false
                color: "transparent"
                RadioButton {
                    id: modest
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    style: RadioButtonStyle {
                        label: Text {
                            font.pointSize: 28
                            text: "Quiet"
                            color: "#fff"
                        }
                        indicator: Rectangle {
                                implicitWidth: 21
                                implicitHeight: 21
                                radius: 16
                                border.color: control.activeFocus ? "darkblue" : "gray"
                                border.width: 1
                                Rectangle {
                                    anchors.fill: parent
                                    visible: control.checked
                                    color: "#555"
                                    radius: 9
                                    anchors.margins: 4
                                }
                        }
                    }
                 }

                    Text {
                        font.pointSize: 18
                        anchors.right: parent.right
                        color: "#fff"
                        text: qsTr("You will see all posts <i>except</i> those flagged by you and the users you follow.")
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.WordWrap
                        width: parent.width - modest.width - 20
                    }
}
            Rectangle {
                anchors.left: parent.left
                anchors.right: parent.right
                color: "transparent"
                                visible: false
                RadioButton {
                    id: quiet
                    anchors.verticalCenter: parent.verticalCenter
                    style: RadioButtonStyle {
                        label: Text {
                            font.pointSize: 28
                            text: "Quiet"
                            color: "#fff"
                        }
                        indicator: Rectangle {
                                implicitWidth: 21
                                implicitHeight: 21
                                radius: 16
                                border.color: control.activeFocus ? "darkblue" : "gray"
                                border.width: 1
                                Rectangle {
                                    anchors.fill: parent
                                    visible: control.checked
                                    color: "#555"
                                    radius: 9
                                    anchors.margins: 4
                                }
                        }
                    }
                 }

                    Text {
                        font.pointSize: 18
                        color: "#fff"
                        text: qsTr( "Posts and user flagged by top trusted users will automatically be hidden.")
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.WordWrap
                        width: parent.width - quiet.width - 20
                    }
}
           Rectangle {
                anchors.left: parent.left
                anchors.right: parent.right
                color: "transparent"
                                visible: false
                RadioButton {
                    id: muted
                    anchors.verticalCenter: parent.verticalCenter
                    style: RadioButtonStyle {
                        label: Text {
                            font.pointSize: 28
                            text: "Muted"
                            color: "#fff"
                        }
                        indicator: Rectangle {
                                implicitWidth: 21
                                implicitHeight: 21
                                radius: 16
                                border.color: control.activeFocus ? "darkblue" : "gray"
                                border.width: 1
                                Rectangle {
                                    anchors.fill: parent
                                    visible: control.checked
                                    color: "#555"
                                    radius: 9
                                    anchors.margins: 4
                                }
                        }
                    }
                 }
                Column {
                    width: parent.width - muted.width
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    spacing: 5
                    Text {
                        font.pointSize: 18
                        color: "#fff"
                        text: qsTr("Only posts made by those you follow and whom they follow (and so on) will be shown.")
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.WordWrap
                        width: parent.width - 20
                    }
                    Text {
                        id: warningMuted
                        font.pointSize: 14
                        color: "#fff"
                        text: qsTr("<i>This mode is very limiting and is not recommended.</i>")
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.WordWrap
                        width: parent.width - 20
                    }
}
}

        }

    }

    Rectangle {
        id: buttons
        height: wizard.height * 0.10
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        color: "transparent"
        Button {
            id: confirmButton
            height: 40
            width: 40
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
           onClicked: {
               wizardStack.push(Qt.resolvedUrl('customizeExperience.qml'))
           }

        }
        Button {
            id: back
            height: 40
            width: 40
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
           onClicked: {
               wizardStack.pop()
           }

        }
    }

}
