import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.15
import QtQml.Models 2.15

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
        ScrollView {
            Layout.fillWidth: true
            Layout.fillHeight: true
            ScrollBar.horizontal.policy: ScrollBar.AlwaysOff

            ListView {
                id: view
                Layout.fillWidth: true
                Layout.fillHeight: true
                spacing: 15

                model: ListModel {
                    id: listModel
                    ListElement {
                        image: "data/IMG_4079.PNG"
                        title: "Московский Политех представил электромотоцикл в конгрессно-выставочном центре «Патриот»"
                        date: "15 Июля 2021"
                    }
                    ListElement {
                        image: "data/vPp7Gx3Q6kw.jpg"
                        title: "В Московском Политехе началось вручение дипломов"
                        date: "14 Июля 2021"
                    }
                    ListElement {
                        image: "data/1695.jpg"
                        title: "Единовременная поддержка студентов, соблюдающих самоизоляцию в общежитии"
                        date: "13 Июля 2021"
                    }
                    ListElement {
                        image: "data/5.JPG"
                        title: "Яхтсмены Московского Политеха на парусном фестивале «Народная регата»"
                        date: "13 Июля 2021"
                    }
                    ListElement {
                        image: "data/photo_2021-07-12_10-48-42.jpg"
                        title: "Политех на выпуск — 2021"
                        date: "12 Июля 2021"
                    }
                }

                delegate: Item {
                    width: view.width
                    height: img.height
                    Image {
                        id: img
                        anchors.centerIn: parent
                        width: view.width
                        source: model.image
                        fillMode: Image.PreserveAspectFit

                        Rectangle {
                            anchors.fill: parent

                            color: "#A0000000"
                            Label {
                                anchors.margins: 20
                                anchors.bottom: parent.bottom
                                anchors.left: parent.left
                                width: parent.width - anchors.margins * 2
                                wrapMode: Text.WordWrap
                                text: model.title
                                font.pointSize: 20
                            }
                            Label {
                                anchors.margins: 20
                                text: model.date
                                horizontalAlignment: Text.AlignRight
                                anchors.top: parent.top
                                anchors.right: parent.right
                            }
                        }
                    }
                }
            }
        }
    }
}
