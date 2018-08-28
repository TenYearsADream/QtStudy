import QtQuick 2.0
import QtGraphicalEffects 1.0

Rectangle {
    width: 180
    height: 100

    Row {
        anchors.centerIn: parent
        spacing: 16
        Rectangle {
            id: normalRect
            width: 60
            height: 60
            radius: 10
            color: "steelblue"
            layer.enabled: true
            layer.effect: DropShadow {
                transparentBorder: false
                horizontalOffset: 8
                verticalOffset: 8
            }
        }

        Rectangle {
            id: transparentBorderRect
            width: 60
            height: 60
            radius: 10
            color: "steelblue"
            layer.enabled: true
            layer.effect: DropShadow {
                transparentBorder: true
                horizontalOffset: 8
                verticalOffset: 8
            }
        }
    }
}
