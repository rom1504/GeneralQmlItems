import QtQuick 2.0

Button
{
    property alias imageSource:posterImage.source
    Image
    {
        width:parent.width
        height:parent.height
        id:posterImage
    }
}
