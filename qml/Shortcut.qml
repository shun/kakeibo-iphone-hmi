import QtQuick 2.0
import QtQuick.Controls 1.1

Rectangle {
    id: shortcut
    width: 320
    height: 220

    Button {
        id: button1
        x: 8
        y: 152
        width: 100
        height: 60
        text: qsTr("...")
    }

    Button {
        id: button2
        x: 110
        y: 152
        width: 100
        height: 60
        text: qsTr("...")
    }

    Button {
        id: button3
        x: 212
        y: 152
        width: 100
        height: 60
        text: qsTr("...")
    }

    Button {
        id: button4
        x: 8
        y: 80
        width: 100
        height: 60
        text: qsTr("夕食")
    }

    Button {
        id: button5
        x: 110
        y: 80
        width: 100
        height: 60
        text: qsTr("taxi")
    }

    Button {
        id: button6
        x: 212
        y: 80
        width: 100
        height: 60
        text: qsTr("地下鉄")
    }

    Button {
        id: button7
        x: 8
        y: 8
        width: 100
        height: 60
        text: qsTr("コーヒー")
    }

    Button {
        id: button8
        x: 110
        y: 8
        width: 100
        height: 60
        text: qsTr("ジュース")
    }

    Button {
        id: button9
        x: 212
        y: 8
        width: 100
        height: 60
        text: qsTr("昼食")
    }
}
