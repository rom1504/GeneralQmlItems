import QtQuick 2.0

RectangleButton
{
    id:tibutton
    property alias font:button.font
    property alias text:button.text
    property alias icon:image.source


    Row
    {
        id:r
        width:childrenRect.width
        height:childrenRect.height
        Text
        {
            font.pointSize: 14
            id: button
            height:button.contentHeight
            width:button.contentWidth
            color:"#717171"
        }
        Image
        {
            id:image
            height:button.height
            fillMode: Image.PreserveAspectFit

        }
    }
}
