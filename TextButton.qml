import QtQuick 2.0

Button
{
    property alias font:button.font
    property alias text:button.text
    width:rectangle.width+5
    height:rectangle.height+5
    onEntered:rectangle.color="#DDDDEE"
    onExited: rectangle.color="white"
    Rectangle
    {
        id: rectangle
        color: "white"
        height:button.contentHeight
        width:button.contentWidth
        Text
        {
            font.pointSize: 14
            id: button
        }
    }
}
