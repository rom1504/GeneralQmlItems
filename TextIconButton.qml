import QtQuick 2.0

Button
{
    property alias font:button.font
    property alias text:button.text
    property alias icon:image.source

    width:rectangle.width+5
    height:rectangle.height+5
    onEntered:rectangle.color="#DDDDEE"
    onExited: rectangle.color="white"
    Rectangle
    {
        id: rectangle
        color:"white"
        width:r.width
        height:r.height
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
            }
            Image
            {
                id:image
                height:button.height
                fillMode: Image.PreserveAspectFit

            }
        }
    }
}
