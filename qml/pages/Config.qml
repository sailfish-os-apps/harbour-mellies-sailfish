import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.LocalStorage 2.0
import "../Mellies/storage.js" as Storage


Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    RemorseItem { id: remorse }

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent

        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView

        Column {
            anchors.centerIn: parent
            spacing: button1.height

            Button {
                id: button1
                anchors.horizontalCenter: parent.horizontalCenter
                text: "color 1"
                color: board.color1

                onClicked: {
                    var dialog = pageStack.push("Sailfish.Silica.ColorPickerDialog")
                    dialog.accepted.connect(function() {
                        board.color1 = dialog.color
                    })
                }
            }
            Button {
                id: button2
                anchors.horizontalCenter: parent.horizontalCenter
                text: "color 2"
                color: board.color2

                onClicked: {
                    var dialog = pageStack.push("Sailfish.Silica.ColorPickerDialog")
                    dialog.accepted.connect(function() {
                        board.color2 = dialog.color
                    })
                }
            }
            Button {
                id: button3
                anchors.horizontalCenter: parent.horizontalCenter
                text: "level 1 color"
                color: board.level1Color

                onClicked: {
                    var dialog = pageStack.push("Sailfish.Silica.ColorPickerDialog")
                    dialog.accepted.connect(function() {
                        board.level1Color = dialog.color
                    })
                }
            }
            Button {
                id: button4
                anchors.horizontalCenter: parent.horizontalCenter
                text: "level 2 color"
                color: board.level2Color

                onClicked: {
                    var dialog = pageStack.push("Sailfish.Silica.ColorPickerDialog")
                    dialog.accepted.connect(function() {
                        board.level2Color = dialog.color
                    })
                }
            }
            Button {
                id: button5
                anchors.horizontalCenter: parent.horizontalCenter
                text: "level 3 color"
                color: board.level3Color

                onClicked: {
                    var dialog = pageStack.push("Sailfish.Silica.ColorPickerDialog")
                    dialog.accepted.connect(function() {
                        board.level3Color = dialog.color
                    })
                }
            }
            Button {
                id: resetButton
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Reset to default"


                onClicked: {
                    remorse.execute(page, "Reset color to default", function() {
                        board.color1 = "blue"
                        board.color2 = "red"
                        board.level1Color = "green"
                        board.level2Color = "orange"
                        board.level3Color = "black"
                    })
                }
            }
        }
    }
}


