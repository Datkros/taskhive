import QtQuick 2.1
import QtQuick.Controls 1.1

Rectangle {
    property bool ignoreTextChange: false
    property int popupHeight: contents.height - searchText.height
    id: item1
    color: "#fff"
    Item {
        id: contents
        anchors.fill: parent
        TextInput {
            id: searchText
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            height: parent.height
            font.pointSize: 14
            color: "#000000"
            onTextChanged: {
                if(!ignoreTextChange)
                {
                    // searchTextChanged(text)
                    suggestionBox.visible = true
                }
            }
            onAccepted: doSearch(searchText.text)
        }
        Image {
            id: iconSearch
            anchors.left: parent.left
            source: "icon-search.svg"
            anchors.verticalCenter: parent.verticalCenter
            anchors.leftMargin: 12
        }
        ResultSuggestions {
                id: suggestionBox
                z: 100
                height: popupHeight
                anchors.top: searchText.bottom
                anchors.right: parent.right
                anchors.topMargin: 1
                width: searchText.width - searchText.leftPadding
                visible: false
        }
    }
}
