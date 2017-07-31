import QtQuick 2.7
import QtQuick.Controls 1.4
Item {
    Text {
        id: portfolioTitle
        anchors.left: parent.left
        anchors.leftMargin: 30
        text: qsTr("Portfolio")
        font.pointSize: 24
        color: "#fff"
    }
    Rectangle {
        height: 1
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: portfolioTitle.bottom
        anchors.topMargin: 5
    }
    ScrollView {
        anchors.top: portfolioTitle.bottom
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.topMargin: 31
        anchors.leftMargin: 30
        horizontalScrollBarPolicy: Qt.ScrollBarAlwaysOff
        verticalScrollBarPolicy: Qt.ScrollBarAlwaysOff
        GridView {
            id: gridPortfolio
            anchors.fill: parent
            cellWidth: 230
            cellHeight: 180
            model: portfolioList
            delegate: Rectangle {
                border.color: "#fff"
                color: "transparent"
                width: gridPortfolio.cellWidth - 30
                height: gridPortfolio.cellHeight - 30
                Item {
                    anchors.fill: parent
                    anchors.margins: 5
                    Image {
                        id: img
                        source: file
                        fillMode: Image.PreserveAspectFit
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 5
                        height: parent.height
                        width: parent.width
                    }
                    Button {
                        anchors.right: parent.right
                        anchors.bottom: parent.bottom
                        width: 20
                        height: 20
                        onClicked: portfolioList.remove(gridPortfolio.currentIndex)
                    }
                }


            }
        }
    }
}
