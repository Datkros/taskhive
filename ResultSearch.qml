import QtQuick 2.0
import "ColumnHelper.js" as ColumnHelper
Column {
    property alias model: repeater.model
    property int selectedIndex
    property variant selectedLocation: selectedIndex == -1 ? null : model[selectedIndex]
    property int itemHeight: 28
    signal locationClicked(variant location)
    id: container
    height: itemHeight * model.length

    ListView {
        header: Item {}
        id: repeater
        property variant columnWidths: ColumnHelper.calcColumnWidths(model, repeater)
        width: parent.width
        height: parent.height
        delegate: ResultItemSearch {
            width: container.width
            height: itemHeight
            selected: {
                if (index == selectedIndex)
                    return true
                return false
            }
            searchItem: modelData
            onClicked: locationClicked(location)

        }
    }
}
