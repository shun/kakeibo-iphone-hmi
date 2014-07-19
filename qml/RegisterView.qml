import QtQuick 2.0
import QtQuick.Controls 1.1

Rectangle {
    width: 320
    height: 568

    Tenkey {
        x:0
        y:parent.height - height
        clip: true

        onPressKey: {
            console.log("key : ", key)
            if (textField1.text == "¥ 0")
            {
                if (key == "0")
                    return
                else
                    textField1.text = "¥ "
            }

            textField1.text += key
        }
    }

    TextField {
        id: textField1
        x: 0
        y: 42
        width: 269
        height: 46
        text: "¥ 0"
        readOnly: true
        antialiasing: false
        font.pointSize: 28
        placeholderText: qsTr("Text Field")
        transformOrigin: Item.Center
        horizontalAlignment: TextInput.AlignRight

            Label {
                id: label1
                x: 104
                y: -33
                text: qsTr("2014/7/13")
                font.pointSize: 20
                MouseArea {
                    anchors.topMargin: 0
                    anchors.fill: parent
                    onClicked: {
                        console.log("clicked")
                        calendar1.visible = true
                        calendar1.focus = true
                }
            }
        }

    }

    Button {
        id: button_clear
        x: 275
        y: 42
        width: 45
        height: 45
        text: qsTr("X")

        onClicked: {
            textField1.text = "¥ 0"
        }
    }

    Button {
        id: button_setting
        x: 8
        y: 8
        width: 74
        height: 28
        text: qsTr("Setting")
    }

    Button {
        id: button_fav
        x: 33
        y: 94
        width: 85
        height: 28
        text: qsTr("Favorite")
        checked: true
        onClicked: {
            subPanel1.state = text
        }
    }

    Button {
        id: button_history
        x: 118
        y: 94
        width: 85
        height: 28
        text: qsTr("History")
        onClicked: {
            subPanel1.state = text
        }
    }

    Button {
        id: button_categories
        x: 203
        y: 94
        width: 85
        height: 28
        text: qsTr("Categories")
        onClicked: {
            subPanel1.state = text
        }
    }

    Calendar {
        id: calendar1
        x: 60
        y: 42
        visible: false
    }

    SubPanel {
        id: subPanel1
        x: 0
        y: 128

        state: "Favorite"
    }
}
