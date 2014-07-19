import QtQuick 2.0
import QtQuick.Controls 1.1

Rectangle {
    id:history
    width: 320
    height: 220

    ListView {
        id: listView1
        x: 0
        y: 0
        width: 320
        height: 220
        model: ListModel {
            ListElement {
                name: "コーヒー"
                colorCode: "grey"
                value: 120
            }

            ListElement {
                name: "昼食"
                colorCode: "red"
                value: 800
            }

            ListElement {
                name: "夕食"
                colorCode: "blue"
                value :1000
            }

            ListElement {
                name: "ジュース"
                colorCode: "green"
                value : 100
            }
        }
        delegate: Item {
            x: 5
            width: 80
            height: 20
            Row {
                id: row1
                Rectangle {
                    width: 40
                    height: 20
                    color: colorCode
                }

                Text {
                    text: name
                    width: 100
                    anchors.verticalCenter: parent.verticalCenter
                    font.bold: true
                }
                Text {
                    text: value
                    width :120
                    anchors.verticalCenter: parent.verticalCenter
                    font.bold: true
                    horizontalAlignment: TextInput.AlignRight
                }
                spacing: 10
            }
        }
    }
}
