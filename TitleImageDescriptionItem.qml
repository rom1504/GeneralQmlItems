import QtQuick 2.0

Item
{
    width:parent.width
    height:childrenRect.height
    property alias title:text1.text
    property alias imageSource:image.source
    property alias description:text2.text
    default property alias children : insideItem.children

    Column
    {
        width:parent.width
        spacing:5
        Title
        {
            id:text1
        }
        Row
        {
            spacing:5
            width:parent.width
            Image
            {
                id:image
                width:parent.width/519*100
                sourceSize.height: image.width*3/2
                fillMode: Image.PreserveAspectCrop
            }
            Description
            {
                id:text2
            }
        }
        Item
        {
            height:childrenRect.height
            width:parent.width-x
            id:insideItem
        }
    }
}
