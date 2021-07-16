import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.15

Page {
    header: Row {
        RoundButton {
            text: qsTr("\u2261")
            //flat: true
            onClicked: {
                drawer.open()
            }
        }
        Label {
            text: qsTr("Новости")
            font.pointSize: 30
        }
    }

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 20
        ScrollView {
            Layout.fillWidth: true
            Layout.fillHeight: true
            clip: true
            ScrollBar.horizontal.policy: ScrollBar.AlwaysOff

            ListView {
                id: listView
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.leftMargin: 10
                Layout.rightMargin: 10

                model: ListModel {
                    id: listModel
                    ListElement { text: "qwe" }
                    ListElement { text: "qwe" }
                    ListElement { text: "qwe" }
                    ListElement { text: "qwe" }
                    ListElement { text: "qwe" }
                }

                spacing: 3
                delegate: RowLayout {
                    width: listView.width
                    Label {
                        text: model.text
                    }
                }
            }
        }
    }
}
