import QtQuick 2.0
import QtQuick.Controls 1.4
import "../"
Item {
    Rectangle {
        color: "transparent"
        anchors.fill: parent
        anchors.margins: {
            left: 20
            right: 20
            top: 20
            bottom: 20
        }
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
            text: qsTr("Known outside of Taskhive?\nLink your profiles.")
            font.pointSize: 38
            color: "#fff"
        }
        Column {
            anchors.top: generalText.bottom
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.topMargin: 50
            spacing: 10
            Rectangle {
                id: inputProfile
                height: 50
                anchors.right: parent.right
                anchors.left: parent.left
                Image {
                    id: icon
                    anchors.left: parent.left
                    source: "../images/icon-search.svg"
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: 12
                    anchors.rightMargin: 10
                }
                TextInput {
                    id: searchText
                    anchors.top: parent.top
                    anchors.left: icon.right
                    anchors.right: parent.right
                    height: parent.height
                    font.pointSize: 14
                    anchors.leftMargin: 10
                    color: "#000000"
                    verticalAlignment: TextInput.AlignVCenter

                    onAccepted: profiles.append({'link':searchText.text})
                }
            }
            Text {
                id: pasteDescription
                text: qsTr("Paste this somewhere on that page.")
                font.pointSize: 28
                color: "#fff"
            }
            TextArea {
                id: proofTextArea
                font.pointSize: 28
                anchors.left: parent.left
                anchors.right: parent.right
                text: qsTr('{proof:"buyguy::8c380fa68a3f::bdc2870361f052aeb5987f406d7bf6eb457ef7ca17e68727"}')
                readOnly: true
                wrapMode: TextEdit.WrapAnywhere
            }
            Button {
                anchors.right: parent.right
                height: 50
                width: 50
                onClicked: profiles.append({'link':searchText.text})
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

}
