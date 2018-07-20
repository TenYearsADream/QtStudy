import QtQuick 2.2

Rectangle {
    id: root;
    Component.onCompleted: {
        console.time("regexp");
        for(var i=0; i < 10000; i++){
        var str = "We are dogs;\nYour dogs;\nWe want meat.\nPlease.";
        var lines = str.match(/^We.*/mg);
        console.log(lines.length);
        console.log(lines);
        }
        console.timeEnd("regexp");
    }
}




