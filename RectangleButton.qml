import QtQuick 2.0

Button
{

    default property alias children : insideItem.children

    width:rectangle.width+5
    height:rectangle.height+5

    Rectangle
    {
        id: rectangle
        color:parent.pressed ? "#DDDDEE" : "white"
        width:insideItem.width+10
        height:insideItem.height+10
        border.width: 1
        border.color: "#B0B0B0"

        Item
        {
            id:insideItem
            anchors.centerIn: parent
            width:childrenRect.width
            height:childrenRect.height
        }
    }
}
