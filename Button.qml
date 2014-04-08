import QtQuick 2.0

Item
{
    id:container
    signal clicked
    signal pressAndHold
    property bool pressed:area.pressed
    property alias mouseX : area.mouseX
    property alias mouseY : area.mouseY


    function isMouseIn(rect,tolerance)
    {
        if(tolerance===undefined) tolerance=0
        return rect.x-tolerance<mouseX-10 && mouseX-10<rect.x+rect.width+tolerance && rect.y-tolerance<mouseY-10 && mouseY-10<rect.y+rect.height+tolerance;
    }

    MouseArea
    {
        hoverEnabled:true
        id:area
        anchors.fill: parent
        onClicked: container.clicked()
        onPressedChanged: container.pressed=pressed

        onPressAndHold:parent.pressAndHold()
    }
}
