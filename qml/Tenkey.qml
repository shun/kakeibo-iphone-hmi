import QtQuick 2.0
import QtQuick.Controls 1.1


Rectangle {
    id: tenkey
    width: 320
    height: 220

    signal pressKey(string key)

    property int keyw:  84
    property int keyh: 60

    Button {
        id: key0
        x: 1
        y: 161
        width: keyw
        height: keyh
        text: qsTr("0")
        onClicked: {
            tenkey.pressKey(text)
        }
    }

    Button {
        id: key1
        x: 1
        y: 107
        width: keyw
        height: keyh
        text: qsTr("1")
        onClicked: {
            tenkey.pressKey(text)
        }
    }

    Button {
        id: key2
        x: 82
        y: 107
        width: keyw
        height: keyh
        text: qsTr("2")
        onClicked: {
            tenkey.pressKey(text)
        }
    }

    Button {
        id: key3
        x: 163
        y: 107
        width: keyw
        height: keyh
        text: qsTr("3")
        onClicked: {
            tenkey.pressKey(text)
        }
    }

    Button {
        id: key4
        x: 1
        y: 53
        width: keyw
        height: keyh
        text: qsTr("4")
        onClicked: {
            tenkey.pressKey(text)
        }
    }

    Button {
        id: key5
        x: 82
        y: 53
        width: keyw
        height: keyh
        text: qsTr("5")
        onClicked: {
            tenkey.pressKey(text)
        }
    }

    Button {
        id: key6
        x: 163
        y: 53
        width: keyw
        height: keyh
        text: qsTr("6")
        onClicked: {
            tenkey.pressKey(text)
        }
    }

    Button {
        id: key7
        x: 1
        y: -1
        width: keyw
        height: keyh
        text: qsTr("7")
        onClicked: {
            tenkey.pressKey(text)
        }
    }

    Button {
        id: key8
        x: 82
        y: -1
        width: keyw
        height: keyh
        text: qsTr("8")
        onClicked: {
            tenkey.pressKey(text)
        }
    }

    Button {
        id: key9
        x: 163
        y: -1
        width: keyw
        height: keyh
        text: qsTr("9")
        onClicked: {
            tenkey.pressKey(text)
        }
    }

    Button {
        id: key_post
        x: 244
        y: -1
        width: 76
        height: 222
        text: qsTr("POST")
        onClicked: {
            tenkey.pressKey(text)
        }
    }

    ListView {
        id: list_account
        x: 84
        y: 165
        width: 146
        height: 46
        clip: true
        model: ListModel {
            ListElement {
                name: "お財布"
                colorCode: "grey"
            }

            ListElement {
                name: "クレジットカード"
                colorCode: "red"
            }

            ListElement {
                name: "SUICA"
                colorCode: "blue"
            }

            ListElement {
                name: "Sapica"
                colorCode: "green"
            }
        }
        delegate: Item {
            x: 5
            width: 80
            height: 40
            Row {
                id: row1
                Rectangle {
                    width: 40
                    height: 40
                    color: colorCode
                }

                Text {
                    text: name
                    anchors.verticalCenter: parent.verticalCenter
                    font.bold: true
                }
                spacing: 10
            }
        }
    }
}
