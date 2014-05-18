import QtQuick 2.0

Button
{
    width: parent.width
    height:sbr.height
    id:shadowBorderRectangleButton
    default property alias children : sbr.children

    property double defaultHeight:sbr.defaultHeight

    property alias rectColor:sbr.rectColor

    ShadowBorderRectangle
    {
        id:sbr
    }
}
