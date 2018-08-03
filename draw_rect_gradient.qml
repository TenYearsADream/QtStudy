import QtQuick 2.2

Canvas {
    width: 400;
    height: 240;
    contextType: "2d";

    onPaint: {
        context.lineWidth = 2;
        context.strokeStyle = "red";
        var gradient = context.createLinearGradient(60, 50, 180, 130);
        gradient.addColorStop(0.0, Qt.rgba(1, 0, 0, 1.0));
        gradient.addColorStop(1.0, Qt.rgba(0, 0, 1, 1.0));
        context.fillStyle = gradient;
        context.beginPath();
        context.rect(60, 50, 120, 80);
        context.fill();
        context.stroke();

        gradient = context.createRadialGradient(230, 160, 30, 260, 200, 20);
        gradient.addColorStop(0,0, Qt.rgba(1, 0, 0, 1.0));
        gradient.addColorStop(1.0, Qt.rgba(0, 0, 1, 1.0));
        context.fillStyle = gradient;
        context.beginPath();
        context.rect(200, 140, 80, 80);
        context.fill();
        context.stroke();
    }
}
