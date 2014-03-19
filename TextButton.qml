import QtQuick 2.0

Button
{
    id:tbutton
    property alias font:button.font
    property alias text:button.text
    width:rectangle.width+5
    height:rectangle.height+5
    Rectangle
    {
        id: rectangle
        color:tbutton.pressed ? "#DDDDEE" : "white"
        height:button.contentHeight
        width:button.contentWidth
        Text
        {
            font.pointSize: 14
            id: button
        }
    }
}
