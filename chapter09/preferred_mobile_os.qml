import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2

<<<<<<< HEAD
Rectangle{
=======
Rectangle {
>>>>>>> 532e09de7aa9da0c3717a070ce9110df8bd6f6b8
    width: 320;
    height: 300;
    color: "#D0D0D0";

    Rectangle{
        id: resultHolder;
        color: "#A0A0A0";
        width: 200;
        height: 60;
        anchors.centerIn: parent;
        visible: false;
        z: 2;
        opacity: 0.8;
        border.width: 2;
        border.color: "#808080";
        Text {
            id: result;
            anchors.centerIn: parent;
            font.pointSize: 20;
            color: "blue";
            font.bold: true;
        }
    }

<<<<<<< HEAD
    ExclusiveGroup{
=======
    ExclusiveGroup {
>>>>>>> 532e09de7aa9da0c3717a070ce9110df8bd6f6b8
        id: mos;
    }

    Component {
        id: radioStyle;
<<<<<<< HEAD
        RadioButtonStyle{
            indicator:Rectangle{
                 implicitWidth: 16;
                 implicitHeight: 12;
                 radius: 6;
                 border.color: control.hovered ? "darkblue" : "gray";
                 border.width: 1;
                 Rectangle{
                     anchors.fill: parent;
                     visible: control.checked;
                     color: "#0000A0";
                     radius: 5;
                     anchors.margins: 3;
                 }
            }
            label: Text{
=======
        RadioButtonStyle {
            indicator: Rectangle {
                implicitWidth: 16;
                implicitHeight: 12;
                radius: 6;
                border.color: control.hovered ? "darkblue" : "gray";
                border.width: 1;
                Rectangle {
                    anchors.fill: parent;
                    visible: control.checked;
                    color: "#0000A0";
                    radius: 5;
                    anchors.margins: 3;
                }
            }
            label: Text {
>>>>>>> 532e09de7aa9da0c3717a070ce9110df8bd6f6b8
                color: control.activeFocus ? "blue" : "black";
                text: control.text;
            }
        }
    }
    
<<<<<<< HEAD
    Text{
        id: notation;
        text: "Please select the best mobile os: "
=======
    Text {
        id: notation;
        text: "Please select the best mobile os: ";
>>>>>>> 532e09de7aa9da0c3717a070ce9110df8bd6f6b8
        anchors.top: parent.top;
        anchors.topMargin: 16;
        anchors.left: parent.left;
        anchors.leftMargin: 8;
    }
<<<<<<< HEAD
    RadioButton{
=======

    RadioButton {
>>>>>>> 532e09de7aa9da0c3717a070ce9110df8bd6f6b8
        id: android;
        text: "Android";
        exclusiveGroup: mos;
        anchors.top: notation.bottom;
        anchors.topMargin: 4;
        anchors.left: notation.left;
        anchors.leftMargin: 20;
        checked: true;
        focus: true;
        activeFocusOnPress: true;
        style: radioStyle;
        onClicked: resultHolder.visible = false;
    }
<<<<<<< HEAD
    RadioButton{
=======
    RadioButton {
>>>>>>> 532e09de7aa9da0c3717a070ce9110df8bd6f6b8
        id: ios;
        text: "iOS";
        exclusiveGroup: mos;
        anchors.top: android.bottom;
        anchors.topMargin: 4;
        anchors.left: android.left;
        activeFocusOnPress: true;
        style: radioStyle;
        onClicked: resultHolder.visible = false;
    }
<<<<<<< HEAD
    RadioButton{
        id: ios;
        text: "iOS";
        exclusiveGroup: mos;
        anchors.top: android.bottom;
=======
    RadioButton {
        id: wp;
        text: "Windows Phone";
        exclusiveGroup: mos;
        anchors.top: ios.bottom;
        anchors.topMargin: 4;
        anchors.left: android.left;
        activeFocusOnPress: true;
        style: radioStyle;
        onClicked: resultHolder.visible = false;
    }
    RadioButton {
        id: firefox;
        text: "Firefox OS";
        exclusiveGroup: mos;
        anchors.top: wp.bottom;
        anchors.topMargin: 4;
        anchors.left: android.left;
        activeFocusOnPress: true;
        style: radioStyle;
        onClicked: resultHolder.visible = false;
    }
    RadioButton {
        id: sailfish;
        text: "Sailfish OS";
        exclusiveGroup: mos;
        anchors.top: firefox.bottom;
>>>>>>> 532e09de7aa9da0c3717a070ce9110df8bd6f6b8
        anchors.topMargin: 4;
        anchors.left: android.left;
        activeFocusOnPress: true;
        style: radioStyle;
        onClicked: resultHolder.visible = false;
    }

<<<<<<< HEAD
=======
    Button {
        id: confirm;
        text: "Confirm";
        anchors.top: sailfish.bottom;
        anchors.topMargin: 8;
        anchors.left: notation.left;
        onClicked: {
            result.text = mos.current.text;
            resultHolder.visible = true;
        }
    }
}
>>>>>>> 532e09de7aa9da0c3717a070ce9110df8bd6f6b8
