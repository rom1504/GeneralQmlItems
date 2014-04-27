import QtQuick 2.0

Button
{
    property alias imageSource:posterImage.source
    property int tolerance:0
    Image
    {
        width:parent.width-tolerance
        height:parent.height-tolerance
        id:posterImage
    }
}
