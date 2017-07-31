import QtQuick 2.0


Item {
    property variant columnTitles
    id: container
    Rectangle {
        id: resultContent
        anchors.fill: parent
        z: 100
        ResultSearch {
            id: searchSuggestion
            width: parent.width
            model: [{"name":"motion graphics", "category":"related"}, {"name":"animation", "category":"related"}, {"name":"design", "category":"related"},{"name":"3D Modeling", "category":"related"}]
        }
    }
}
