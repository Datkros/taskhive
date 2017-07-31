import QtQuick 2.0

Item {
    Text {
        id: skillsTitle
        anchors.left: parent.left
        anchors.leftMargin: 30
        text: qsTr("Skills")
        font.pointSize: 24
        color: "#fff"
    }
    Rectangle {
        height: 1
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: skillsTitle.bottom
        anchors.topMargin: 5
    }
}
