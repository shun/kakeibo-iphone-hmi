import QtQuick 2.0
import QtQuick.Controls 1.1

Rectangle {
    id: logonview
    width: 320
    height: 568

    signal logonSucceed()

    TextField {
        id: textField1
        x: 11
        y: 40
        width: 301
        height: 22
        placeholderText: qsTr("User ID or Email address")
    }

    TextField {
        id: textField2
        x: 11
        y: 102
        width: 301
        height: 22
        placeholderText: qsTr("put your password")
    }

    Button {
        id: button_logon
        x: 51
        y: 157
        width: 201
        height: 47
        text: qsTr("Logon")

        onClicked: {
            logonSucceed()
        }
    }

    Label {
        id: label1
        x: 11
        y: 18
        text: qsTr("User ID or Email address")
    }

    Label {
        id: label2
        x: 11
        y: 80
        text: qsTr("Password")
    }
}
