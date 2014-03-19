import QtQuick 2.0
import QtGraphicalEffects 1.0


Item
{
    id:root
    width: parent.width
    height:container.height
    property alias mouseX : mouseArea.mouseX
    property alias mouseY : mouseArea.mouseY
    default property alias children : insideItem.children
    signal clicked
    signal pressAndHold
    signal entered
    signal exited
    signal positionChanged

    onEntered: rect.color="#EEEEEE"
    onExited: rect.color="white"

    function isMouseIn(rect,tolerance)
    {
        if(tolerance===undefined) tolerance=0
        return rect.x-tolerance<mouseX-10 && mouseX-10<rect.x+rect.width+tolerance && rect.y-tolerance<mouseY-10 && mouseY-10<rect.y+rect.height+tolerance;
    }

    Item
    {
        id: container
        anchors.centerIn: parent
        width:  parent.width
        height: rect.height + (2 * rectShadow.radius)

        Rectangle
        {
            id: rect
            height: insideItem.childrenRect.height +insideItem.y+5
            width: parent.width-(2 * rectShadow.radius)
            color: "white"
            radius: 2
            antialiasing: true
            border
            {
                width: 1
                color: "#EAEAEA"
            }
            anchors.centerIn: parent
            Item
            {
                id:insideItem
                x: 5;
                y: 5;
                width:parent.width-5
            }
        }
    }
    DropShadow
    {
        id: rectShadow
        anchors.fill: source
        cached: true
        horizontalOffset: 1.5
        verticalOffset: 1.5
        radius: 8.0
        samples: 16
        color: "#80000000"
        smooth: true
        source: container
    }

    MouseArea
    {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true
        onClicked: parent.clicked()
        onPressAndHold:parent.pressAndHold()
        onEntered: parent.entered()
        onExited:parent.exited()
        onPositionChanged: parent.positionChanged()

    }
}
