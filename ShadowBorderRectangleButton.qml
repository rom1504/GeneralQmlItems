import QtQuick 2.0

Button
{

    property bool fixedSize:false

    width: parent.width
    height:fixedSize ? parent.height : sbr.height
    id:shadowBorderRectangleButton

    default property alias children : sbr.children

    property double defaultHeight:fixedSize ? parent.height : sbr.defaultHeight

    property alias rectColor:sbr.rectColor

    ShadowBorderRectangle
    {
        id:sbr
        fixedSize: parent.fixedSize
    }
}
