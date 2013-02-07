import QtQuick 1.1

Rectangle {
    width: 600
    height: 360
    color : "#00805e"
    border.color: "#000000"
    gradient: Gradient {
        GradientStop {
            position: 0.40;
            color: "#00805e";
        }
        GradientStop {
            position: 1.00;
            color: "#ffffff";
        }
    }
    Text {
        id: button1
        text: "Karthic Rao and AJITH ANNA"
        anchors.centerIn: parent

    }
    property color buttonColor: "lightblue"
      property color onHoverColor: "gold"
      property color borderColor: "white"

    MouseArea {
        anchors.fill: parent
        onClicked: {
            console.log(button1.text + "clicked" )
        }
        hoverEnabled: true
        onEntered: parent.border.color = onHoverColor
        onExited: parent.border.color = borderColor
    }

}
