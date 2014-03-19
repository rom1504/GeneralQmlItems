import QtQuick 2.0

Item
{
    id:container
    signal clicked
    signal entered
    signal exited

    MouseArea
    {
        hoverEnabled:true
        id:area
        anchors.fill: parent
        onClicked: container.clicked()
        preventStealing:true
        onEntered: container.entered()
        onExited:container.exited()
    }
}
