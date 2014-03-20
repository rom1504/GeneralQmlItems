import QtQuick 2.0

LineInput
{
    z:100
    id:autoinput
    property variant fetchedModel
    property string delegateItemBorderColor: "white"
    property string delegateItemColor: "white"

    onAccepted:listView.visible=false
    onTextChanged: listView.visible=text!=""
  ListView{
      z:100
      id: listView
      width: parent.width
      height: 300
      anchors.top: inputBar.bottom
      clip:true

      model: fetchedModel
      delegate: Rectangle{
          id: delegateItem
          width: parent.width
          height:  text.contentHeight
          border.color: delegateItemBorderColor
          color: delegateItemColor
          Text {
              id:text
              anchors.leftMargin: 5
              text: display
              font.pointSize: 18
          }
          MouseArea{
              anchors.fill:  parent
              onClicked: {
                  autoinput.text = display
                  autoinput.accepted()
              }
          }
      }

      ListView.onAdd: NumberAnimation { target: listView.delegate; property: "height"; duration: 500; easing.type: Easing.OutInQuad}
      ListView.onRemove:NumberAnimation { target: listView.delegate; property: "height";  duration: 250; easing.type: Easing.InOutQuad}

  }
}
