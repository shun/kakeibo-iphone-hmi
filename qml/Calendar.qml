import QtQuick 2.0
import QtQuick.Controls 1.1

Rectangle {
    id: calender
    width: 200
    height: 170
    border.width: 2

    property string curdate: ""

    onFocusChanged: {
        if (calender.focus == false)
        {
            calender.visible = false
        }

        console.log("focus : " + calender.focus)
    }

    Label {
        id: label1
        x: 12
        y: 28
        width: 20
        height: 16
        text: qsTr("M")
        horizontalAlignment: Text.AlignHCenter
    }

    Label {
        id: label2
        x: 38
        y: 28
        width: 20
        height: 16
        text: qsTr("T")
        horizontalAlignment: Text.AlignHCenter
    }

    Label {
        id: label3
        x: 64
        y: 28
        width: 20
        height: 16
        text: qsTr("W")
        horizontalAlignment: Text.AlignHCenter
    }

    Label {
        id: label4
        x: 90
        y: 28
        width: 20
        height: 16
        text: qsTr("T")
        horizontalAlignment: Text.AlignHCenter
    }

    Label {
        id: label5
        x: 116
        y: 28
        width: 20
        height: 16
        text: qsTr("F")
        horizontalAlignment: Text.AlignHCenter
    }

    Label {
        id: label6
        x: 142
        y: 28
        width: 20
        height: 16
        text: qsTr("S")
        horizontalAlignment: Text.AlignHCenter
    }

    Label {
        id: label7
        x: 168
        y: 28
        width: 20
        height: 16
        text: qsTr("S")
        horizontalAlignment: Text.AlignHCenter
    }

    Button {
        id: button1
        x: 12
        y: 46
        width: 20
        height: 22
        text: qsTr("")
        visible: false
        transformOrigin: Item.Center
    }

    Button {
        id: button2
        x: 64
        y: 46
        width: 20
        height: 22
        text: qsTr("2")
    }

    Button {
        id: button3
        x: 38
        y: 46
        width: 20
        height: 22
        text: qsTr("1")
    }

    Button {
        id: button4
        x: 90
        y: 46
        width: 20
        height: 22
        text: qsTr("3")
    }

    Button {
        id: button5
        x: 116
        y: 46
        width: 20
        height: 22
        text: qsTr("4")
    }

    Button {
        id: button6
        x: 142
        y: 46
        width: 20
        height: 22
        text: qsTr("5")
    }

    Button {
        id: button7
        x: 168
        y: 46
        width: 20
        height: 22
        text: qsTr("7")
    }

    Button {
        id: button8
        x: 12
        y: 70
        width: 20
        height: 22
        text: qsTr("8")
        transformOrigin: Item.Center
    }

    Button {
        id: button9
        x: 64
        y: 70
        width: 20
        height: 22
        text: qsTr("10")
    }

    Button {
        id: button10
        x: 38
        y: 70
        width: 20
        height: 22
        text: qsTr("9")
    }

    Button {
        id: button11
        x: 90
        y: 70
        width: 20
        height: 22
        text: qsTr("11")
    }

    Button {
        id: button12
        x: 116
        y: 70
        width: 20
        height: 22
        text: qsTr("12")
    }

    Button {
        id: button13
        x: 142
        y: 70
        width: 20
        height: 22
        text: qsTr("13")
    }

    Button {
        id: button14
        x: 168
        y: 70
        width: 20
        height: 22
        text: qsTr("14")
    }

    Button {
        id: button15
        x: 12
        y: 94
        width: 20
        height: 22
        text: qsTr("15")
        transformOrigin: Item.Center
    }

    Button {
        id: button16
        x: 64
        y: 94
        width: 20
        height: 22
        text: qsTr("17")
    }

    Button {
        id: button17
        x: 38
        y: 94
        width: 20
        height: 22
        text: qsTr("16")
    }

    Button {
        id: button18
        x: 90
        y: 94
        width: 20
        height: 22
        text: qsTr("18")
    }

    Button {
        id: button19
        x: 116
        y: 94
        width: 20
        height: 22
        text: qsTr("19")
    }

    Button {
        id: button20
        x: 142
        y: 94
        width: 20
        height: 22
        text: qsTr("20")
    }

    Button {
        id: button21
        x: 168
        y: 94
        width: 20
        height: 22
        text: qsTr("21")
    }

    Button {
        id: button22
        x: 12
        y: 118
        width: 20
        height: 22
        text: qsTr("22")
        transformOrigin: Item.Center
    }

    Button {
        id: button23
        x: 64
        y: 118
        width: 20
        height: 22
        text: qsTr("24")
    }

    Button {
        id: button24
        x: 38
        y: 118
        width: 20
        height: 22
        text: qsTr("23")
    }

    Button {
        id: button25
        x: 90
        y: 118
        width: 20
        height: 22
        text: qsTr("25")
        checked: true
    }

    Button {
        id: button26
        x: 116
        y: 118
        width: 20
        height: 22
        text: qsTr("26")
    }

    Button {
        id: button27
        x: 142
        y: 118
        width: 20
        height: 22
        text: qsTr("27")
    }

    Button {
        id: button28
        x: 168
        y: 118
        width: 20
        height: 22
        text: qsTr("28")
    }

    Button {
        id: button29
        x: 12
        y: 143
        width: 20
        height: 22
        text: qsTr("29")
        transformOrigin: Item.Center
    }

    Button {
        id: button30
        x: 64
        y: 143
        width: 20
        height: 22
        text: qsTr("31")
    }

    Button {
        id: button31
        x: 38
        y: 143
        width: 20
        height: 22
        text: qsTr("30")
    }

    Button {
        id: button32
        x: 90
        y: 143
        width: 20
        height: 22
        text: qsTr("")
        visible: false
    }

    Button {
        id: button33
        x: 116
        y: 143
        width: 20
        height: 22
        text: qsTr("")
        visible: false
    }

    Button {
        id: button34
        x: 142
        y: 143
        width: 20
        height: 22
        text: qsTr("")
        visible: false
    }

    Button {
        id: button35
        x: 168
        y: 143
        width: 20
        height: 22
        text: qsTr("")
        visible: false
    }

    Button {
        id: button36
        x: 7
        y: 4
        width: 25
        height: 18
        text: qsTr("<<")
        transformOrigin: Item.Center
    }

    Button {
        id: button37
        x: 168
        y: 4
        width: 25
        height: 18
        text: qsTr(">>")
        transformOrigin: Item.Center
    }

    Label {
        id: label8
        x: 77
        y: 5
        width: 46
        height: 16
        text: qsTr("2014 7")
        horizontalAlignment: Text.AlignHCenter
    }
}
