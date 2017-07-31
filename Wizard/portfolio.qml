import QtQuick 2.7
import QtQuick.Dialogs 1.2
import QtQuick.Controls 1.4
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
        id: generalText
        anchors.top: title.bottom
        text: qsTr("What are you known for?\nProvide some samples.")
        font.pointSize: 38
        color: "#fff"
    }
    Item {
        anchors.top: generalText.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: buttons.top
        anchors.leftMargin: 30
        anchors.rightMargin: 30
        anchors.topMargin: 30
        anchors.bottomMargin: 30
        Rectangle {
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: progressBar.top
            anchors.bottomMargin: 50
            FileDialog {
                    id: fileDialog
                    modality: Qt.WindowModal
                    title: "Choose some file"
                    nameFilters: ["Text files (*.png)", "HTML files (*.jpg)"]
                    onAccepted: {
                        var filePath = fileUrl.toString()
                        portfolioList.append({'file':filePath})
                    }

                }
            MouseArea {
                anchors.fill: parent
                onClicked: fileDialog.open()
            }
        }
        ProgressBar {
            id: progressBar
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            style: ProgressBarStyle {
                background: Rectangle {
                            radius: 2
                            color: "lightgray"
                            border.color: "gray"
                            border.width: 1
                            implicitWidth: 200
                            implicitHeight: 24
                        }
                progress: Rectangle {
                    border.color: "steelblue"
                    color: "lightsteelblue"

                    // Indeterminate animation by animating alternating stripes:
                    Item {
                        anchors.fill: parent
                        anchors.margins: 1
                        visible: control.indeterminate
                        clip: true
                        Row {
                            Repeater {
                                Rectangle {
                                    color: index % 2 ? "steelblue" : "lightsteelblue"
                                    width: 20 ; height: control.height
                                }
                                model: control.width / 20 + 2
                            }
                            XAnimator on x {
                                from: 0 ; to: -40
                                loops: Animation.Infinite
                                running: control.indeterminate
                            }
                        }
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
               wizardStack.push(Qt.resolvedUrl('profile.qml'))
               profileStack.push(Qt.resolvedUrl('profileList.qml'))
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