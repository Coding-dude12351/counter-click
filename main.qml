import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("App")

    property int count: 0

    Column {
        anchors.centerIn: parent
        spacing: 20

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Clicks: " + count
            font.pixelSize: 32
            font.bold: true
        }

        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Click me!"
            font.pixelSize: 20
            onClicked: {
                count++
                console.log("Count is now:", count)
            }
        }
    }

}
