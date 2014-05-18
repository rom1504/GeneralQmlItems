import QtQuick 2.0

Text
{
    property bool forceHeight:false
    property double maximumHeight:-1
    height:forceHeight && maximumHeight!=-1 ? maximumHeight : maximumHeight!=-1 ? Math.max(contentHeight,maximumHeight) : contentHeight
    width:parent.width-x
    color: "#717171"
    font { family: 'arial'}
    wrapMode: Text.WordWrap
    font.pointSize: 12
    clip:true
    maximumLineCount: maximumHeight!=-1 ? Math.floor(maximumHeight/font.pixelSize) : 100000000
}
