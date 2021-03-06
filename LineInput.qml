import QtQuick 2.0

FocusScope {
    id: wrapper

    property alias inputBar:rect
    property alias text:input.text
    property alias hint: hint.text
    property alias prefix: prefix.text
    default property alias children : rect.children

    signal accepted
    signal returnText(string text)
    onAccepted: {Qt.inputMethod.hide();returnText(input.text);input.text="";focus=false;}
    property font font
    height:rect.height

    Rectangle {
        id:rect
        border.color: "#707070"
        color: "#EAEAEA"
        radius: 4
        width:parent.width
        height:hint.contentHeight+20

        Text {
            id: hint
            anchors { fill: parent; leftMargin: 14 }
            verticalAlignment: Text.AlignVCenter
            text: "Enter word"
            font: wrapper.font
            color: "#707070"
            opacity: input.length || input.activeFocus ? 0 : 1
        }

        Text {
            id: prefix
            anchors { left: parent.left; leftMargin: 14; verticalCenter: parent.verticalCenter }
            verticalAlignment: Text.AlignVCenter
            font: wrapper.font
            color: "#707070"
            opacity: !hint.opacity
        }

        TextInput {
            id: input
            focus: true
            anchors { left: prefix.right; right: parent.right; top: parent.top; bottom: parent.bottom }
            verticalAlignment: Text.AlignVCenter
            font: wrapper.font
            color: "#707070"
            onAccepted: wrapper.accepted()
            inputMethodHints:Qt.ImhNoPredictiveText|Qt.ImhPreferLowercase|Qt.ImhNoAutoUppercase
        }
    }
}
