import QtQuick 2.0
import QtQuick.Controls 1.1

Rectangle {
    id: subpanel
    width: 320
    height: 220
    clip: true

    Shortcut {
        id: shortcut1
        x: 0
        y: 0
        opacity: 0
    }

    History {
        id: history1
        x: 0
        y: 0
        opacity: 0
    }

    Categories {
        id: categories1
        x: 0
        y: 0
        opacity: 0
    }

    property int aduration: 1000
    transitions: [
        Transition {
            from: "Favorite"
            to: "History"
            PropertyAnimation{target: shortcut1; property:"y"; easing.type: Easing.InSine; duration:aduration; }
        },
        Transition {
            from: "Favorite"
            to: "Categories"
            PropertyAnimation{target: shortcut1; property:"y"; easing.type: Easing.InSine; duration:aduration; }
        },

        Transition {
            from: "History"
            to: "Categories"
            PropertyAnimation{target: history1; property:"y"; easing.type: Easing.InSine; duration:aduration; }
        },
        Transition {
            from: "History"
            to: "Favorite"
            PropertyAnimation{target: history1; property:"y"; easing.type: Easing.InSine; duration:aduration; }
        },

        Transition {
            from: "Categories"
            to: "Favorite"
            PropertyAnimation{target: categories1; property:"y"; easing.type: Easing.InSine; duration:aduration; }
        },
        Transition {
            from: "Categories"
            to: "History"
            PropertyAnimation{target: categories1; property:"y"; easing.type: Easing.InSine; duration:aduration; }
        }
   ]

    states: [
        State {
            name: "Favorite"

            PropertyChanges {
                target: shortcut1
                opacity: 1
                z: 0;
                y:0
            }
            PropertyChanges {
                target: history1
                opacity: 1
                z: 1;
                y:600
            }
            PropertyChanges {
                target: categories1
                opacity: 1
                z: 1;
                y: 600
            }
        },
        State {
            name: "History"

            PropertyChanges {
                target: history1
                opacity: 1
                z: 0;
                y:0
            }
            PropertyChanges {
                target: shortcut1
                opacity: 1
                z: 1;
                y: 600
            }
            PropertyChanges {
                target: categories1
                opacity: 1
                z: 1;
                y: 600
            }
        },

        State {
            name: "Categories"

            PropertyChanges {
                target: categories1
                opacity: 1
                z: 0;
                y:0
            }
            PropertyChanges {
                target: shortcut1
                opacity: 1
                z: 1;
                y: 600
            }
            PropertyChanges {
                target: history1
                opacity: 1
                z: 1;
                y: 600
            }
        }
    ]
}
