import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    Component.onCompleted: {
        colorMaker.color = Qt.rgba(0, 180, 120, 255);
        colorMaker.setAlgorithm(ColorMaker.LinearIncrease);
        changeAlgorithm(colorAlgorithm, colorMaker.algorithm());
    }
}
