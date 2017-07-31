import QtQuick 2.0
import QtQuick.Controls 1.2
import "../"
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
        anchors.top: title.bottom
        text: qsTr("You need an identity.\nLet's make one.")
        font.pointSize: 38
        color: "#fff"
    }
    Text {
        id: uniqueHandleText
        text: qsTr("Choose a unique handle.")
        font.pointSize: 28
        color: "#fff"
        anchors.verticalCenter: parent.verticalCenter
    }
    Rectangle{
        id: searchHandleRec
        anchors.top: uniqueHandleText.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        height: 50
        color: "transparent"
        SearchBar {
            id: searchHandle
            height: 40
            showIcon: false
            anchors.right: confirmButton.left
            anchors.left: parent.left
            popupHeight: 0
            resultBackgroundColor: "white"
        }
        Button {
            id: confirmButton
            height: 40
            width: 40
            anchors.right: parent.right
           onClicked: {
               if(searchHandle.textValue != ""){
                   wizardStack.push(Qt.resolvedUrl('skills.qml'))
                   profileStack.push(Qt.resolvedUrl('profileSkills.qml'))
                   wizard.profileUser = searchHandle.textValue
               }
           }

        }
    }
    Text {
        id: warningText
        text: qsTr("Choose wisely: It can never be changed.")
        z: -1
        anchors.topMargin: 0
        font.pointSize: 18
        color: "#fff"
        anchors.top: searchHandleRec.bottom
    }

}
