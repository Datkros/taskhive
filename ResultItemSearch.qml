import QtQuick 2.0

Item {
    id: container
    property bool selected
    property variant searchItem
    signal clicked()
    Rectangle {
        color: "#0c0c0c"
        anchors.fill: parent
        Text {
            id: resultText
            anchors.left: parent.left
            anchors.leftMargin: 5
            height: parent.height
            font.pointSize: 14
            color: "#fff"
            text: qsTr("motion graphics")
            verticalAlignment: Text.AlignVCenter
        }
        Text {
            id: category
            color: "gray"
            opacity: 0.4
            anchors.right: parent.right
            anchors.rightMargin: 5
            font.pointSize: 14
            text: qsTr("related")
            height: parent.height
            verticalAlignment: Text.AlignVCenter
        }
        Rectangle {
            width: parent.width
            height: 1
            anchors.bottom: parent.bottom
        }
    }
}
