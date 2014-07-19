import QtQuick 2.2
import QtQuick.Controls 1.1

import "./"

ApplicationWindow {
    id: main
    visible: true
    width: 320
    height: 568
    title: qsTr("Zaim de Pon")

 //   Rectangle
 //   {
 //       clip: true

        BaseView {
            id: baseView1
            x: 0
            y: 0
            state: "Logon"
        }
 //   }

}
