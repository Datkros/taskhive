import QtQuick 2.0
import QtQuick.Controls 1.2
Item {
    Text {
        id: uniqueHandleText
        text: qsTr("SKILLS")
        font.pointSize: 28
        color: "#fff"
        anchors.verticalCenter: parent.verticalCenter
    }
    Button {
        id: confirmButton
        height: 40
        width: 40
        anchors.right: parent.right
       onClicked: {
           wizardStack.push(Qt.resolvedUrl('portfolio.qml'))
           profileStack.push(Qt.resolvedUrl('profilePortfolio.qml'))
       }

    }
    Button {
        id: back
        height: 40
        width: 40
        anchors.left: parent.left
       onClicked: {
           wizardStack.pop()
           profileStack.pop()
       }

    }
}
