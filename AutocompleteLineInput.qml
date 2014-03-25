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
      height: 320
      anchors.top: inputBar.bottom
      clip:true

      model: fetchedModel
      delegate: Rectangle{
          id: delegateItem
          width: parent.width
          height:  text.contentHeight+10
          border.color: delegateItemBorderColor
          color: delegateItemColor
          Text {
              id:text
              anchors.verticalCenter: parent.verticalCenter
              text: display
              font.pointSize: 16
          }
          MouseArea{
              anchors.fill:  parent
              onClicked: {
                  autoinput.text = display
                  autoinput.accepted()
              }
          }
      }

  }
}
