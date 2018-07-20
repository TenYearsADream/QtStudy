import QtQuick 2.2
import QtQuick.Controls 1.2

Rectangle{
    width: 320;
    height: 240;
    color: "gray";
    
    Button{
        text: "Quit";
        anchors.centerIn: parent;
        onClicked:{
            Qt.quit();
        }
    }
    Keys.enabled: true;
    Keys.onEscapePressed:{
        Qt.quit();
    }
    Component.onCompleted:{
        console.log(Qt.platform.os);
    }
}
