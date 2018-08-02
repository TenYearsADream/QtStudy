import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2

Rectangle{
    width: 480;
    height: 360;
    color: "#A0B0A0";

    Grid {
        anchors.fill: parent;
        rows: 2;
        columns: 2;
        rowSpacing: 4;
        columnSpacing: 4;
        GroupBox {
            width: 200;
            height: 120;
            title: "ReadOnly Machine";
            ComboBox {
                anchors.top: parent.top;
                anchors.topMargin: 8;
                width: parent.width;
                model:["TV","CD Player","Set Top Box","Router"];
            }
        }

        GroupBox {
            width: 200;
            height: 120;
            title: "Editable fruit";
            ComboBox {
                anchors.top: parent.top;
                anchors.topMargin: 8;
                width:parent.width;
                editable: true;
                model: ListModel {
                    ListElement {text: "Banana"; color: "Yellow"}
                }
                onAccepted: {
                    if(count < 4 && find(currentText) === -1){
                        model.append({text: editText});
                        currentIndex = find(currentText);
                        if(count === 4)
                            editable = false;
                    }
                }
            }
        }

        GroupBox{
            width: 200;
            height: 120;
            title: "editStyle";
            ComboBox {
                anchors.top: parent.top;
                anchors.topMargin: 8;
                width: parent.width;
                model: ["Google", "IBM", "Digia"];
                style: ComboBoxStyle {
                    dropDownButtonWidth: 20;
                    background: Rectangle {
                        implicitHeight: 24;
                        border.width: control.editable ? 0 : 1;
                        border.color: (control.hovered ||
                                       control.pressed) ? 
                                       "blue" : "gray";
                        color: (control.hovered ||
                                control.pressed) ? 
                                "#E0E0E0" : "#C0C0C0";
                        Canvas {
                            width: 16;
                            height: 18;
                            anchors.right: parent.right;
                            anchors.rightMargin: 2;
                            anchors.top: parent.top;
                            anchors.topMargin: 1;
                            onPaint: {
                                var ctx = getContext("2d");
                                ctx.save();
                                ctx.strokeStyle = "black";
                                ctx.lineWidth = 2;
                                ctx.beginPath();
                                ctx.moveTo(1, 8);
                                ctx.lineTo(8, 16);
                                ctx.lineTo(15, 8);
                                ctx.stroke();
                                ctx.restore();
                            }
                        }
                    }
                    label: Text {
                        anchors.left: parent.left;
                        anchors.leftMargin: 2;
                        width: parent.width - 22;
                        height: parent.height;
                        verticalAlignment: Text.AlignVCenter;
                        horizontalAlignment: Text.AlignHCenter;
                        text: control.currentText;
                        color: (control.hovered ||
                                control.pressed) ? "blue" : "black";
                    }
                }
            }
        }

        GroupBox {
            width: 200;
            height: 236;
            title: "Input Month";
            ComboBox {
                anchors.top: parent.top;
                anchors.topMargin: 8;
                width: parent.width;
                editable: true;
                model: ListModel{
                }
                validator: IntValidator{top: 12; bottom: 1;}
                onAccepted: {
                    if(count < 12 && find(currentText) === -1){
                        model.append({text: editText});
                        if(count === 12){
                            editable = false;
                        }
                    }
                }
            }
        }
    }
}
