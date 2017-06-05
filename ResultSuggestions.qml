import QtQuick 2.0

Item {
    id: container
    Rectangle {
        id: resultContent
        anchors.fill: parent
        ResultSearch {
            id: searchSuggestion
            width: parent.width
            model: ["motion graphics", "animation", "design", "3D Modeling"]
        }
    }
}
