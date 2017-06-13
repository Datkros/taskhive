import QtQuick 2.0

Rectangle {
    property int borderWidth
    property int borderHeight
    property int amountLines
    property int spacingItem
    property bool topOrBottom: false
    width: borderWidth
    height:borderHeight
    color: "transparent"
    Column{
        visible: !topOrBottom
        height: parent.height
        width: parent.width
        spacing: spacingItem
        Repeater{
            model: amountLines
            delegate: Rectangle {
                height: borderWidth > borderHeight ? borderHeight: borderHeight/amountLines - spacingItem
                width: borderWidth < borderHeight ? borderWidth: borderWidth/amountLines - spacingItem
                color: "gray"
            }
        }
    }
    Row {
        visible: topOrBottom
        height: parent.height
        width: parent.width
        spacing: spacingItem
        Repeater{
            model: amountLines
            delegate: Rectangle {
                height: borderWidth > borderHeight ? borderHeight: borderHeight/amountLines - spacingItem
                width: borderWidth < borderHeight ? borderWidth: borderWidth/amountLines - spacingItem
                color: "gray"
                anchors.leftMargin: 1
            }
        }
    }
}
