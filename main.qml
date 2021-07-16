import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.15

ApplicationWindow {
    width: 640
    height: 480
    visible: true

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page1 {
        }

        Page2 {
        }
    }

    Drawer {
        id: drawer
        width: Math.min(200, parent.width)
        height: parent.height
//        dragMargin: 50

        ColumnLayout {
            width: parent.width
            height: parent.height
            Label {
                Layout.fillWidth: true
                text: qsTr("Новости")
                font.pointSize: 20
                horizontalAlignment: Text.AlignHCenter
            }
            Label {
                Layout.fillWidth: true
                text: qsTr("Программирование безопасных сетевых приложений")
                wrapMode: Text.WordWrap
                font.pointSize: 10
                horizontalAlignment: Text.AlignHCenter
            }
            ColumnLayout {
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.alignment: Qt.AlignTop
                TabButton { property int n: 1; text: qsTr("Page "+n); onClicked: { swipeView.currentIndex = n-1; drawer.close() } Layout.fillWidth: true }
                TabButton { property int n: 2; text: qsTr("Page "+n); onClicked: { swipeView.currentIndex = n-1; drawer.close() } Layout.fillWidth: true }
            }
            ColumnLayout {
                Layout.alignment: Qt.AlignBottom
                Label {
                    Layout.fillWidth: true
                    text: qsTr("<a href=\"https://github.com/\">github/o3urlj3n</a><br>o3urlj3n@gmail.com")
                    onLinkActivated: Qt.openUrlExternally(link)
                    font.pointSize: 10
                    horizontalAlignment: Text.AlignHCenter
                }
                Image {
                    source: "polytech_logo_main_black.png"
                    Layout.margins: 10
                    Layout.fillWidth: true
                    Layout.preferredHeight: 40
                    fillMode: Image.PreserveAspectFit
                    mipmap: true
                }
            }
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        TabButton {
            text: qsTr("Page 1")
        }
        TabButton {
            text: qsTr("Page 2")
        }
    }
}
