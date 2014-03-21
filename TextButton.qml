import QtQuick 2.0

RectangleButton
{
    id:tbutton
    property alias font:button.font
    property alias text:button.text
    Text
    {
        font.pointSize: 14
        id: button
        height:button.contentHeight
        width:button.contentWidth
        color:"#717171"
    }
}
