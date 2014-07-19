import QtQuick 2.0
import QtQuick.Controls 1.1

Rectangle {
    id: baseview
    width: 320
    height: 568
    clip: true


    RegisterView {
        id: registerView1
        x: 0
        y: 0
        z: 1
        opacity: 0
    }

    LogonView {
        id: logonView1
        x: 0
        y: 0
        z: 1
        opacity: 0

        onLogonSucceed: {
            console.log("onLogonSucceed")
            baseview.state = "Register"
        }
    }

    property int aduration: 800
    transitions: [
        Transition {
            from: "Logon"
            to: "Register"
            PropertyAnimation{target: logonView1; property:"x"; easing.type: Easing.InSine; duration:aduration; }
        },
        Transition {
            from: "Register"
            to: "Logon"
            PropertyAnimation{target: registerView1; property:"x"; easing.type: Easing.InSine; duration:aduration; }
        },

        Transition {
            from: "Register"
            to: "Setting"
            PropertyAnimation{target: registerView1; property:"x"; easing.type: Easing.InSine; duration:aduration; }
        },

        Transition {
            from: "Setting"
            to: "Register"
            PropertyAnimation{target: registerView1; property:"x"; easing.type: Easing.InSine; duration:aduration; }
        }
   ]

    states: [
        State {
            name: "Logon"

            PropertyChanges {
                target: logonView1
                x: 0
                y: 0
                z: 0
                opacity: 1
            }
            PropertyChanges {
                target: registerView1
                x: 400
                y: 0
                z: 1
                opacity: 1
            }

        },
        State {
            name: "Register"

            PropertyChanges {
                target: registerView1
                x: 0
                y: 0
                z: 0
                opacity: 1
            }
            PropertyChanges {
                target: logonView1
                x: 400
                y: 0
                z: 1
                opacity: 1
            }
        },
        State {
            name: "Setting"
        }
    ]
}
