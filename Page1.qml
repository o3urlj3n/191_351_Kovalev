import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.15

Page {
    header: RowLayout {
        Label {
            width: parent.width
            text: qsTr("Аутентификация")
            font.pointSize: 30
        }
    }

    ColumnLayout {
        anchors.fill: parent
        ColumnLayout {
            Layout.fillWidth: true
            Layout.margins: 50

            TextField {
                id: login
                Layout.fillWidth: true
                maximumLength: 1024
                placeholderText: qsTr("Логин")
                onTextChanged: failLoginLabel.visible = false
            }
            TextField {
                id: password
                Layout.fillWidth: true
                echoMode: TextInput.Password
                maximumLength: 1024
                placeholderText: qsTr("Пароль")
                onTextChanged: failLoginLabel.visible = false
            }
            RowLayout {
                spacing: 20
                Button {
                    text: qsTr("Войти")
                    onClicked: {
                        let l = login.text
                        let p = password.text
                        if (l == 'q' && p == '1') {
                            swipeView.currentIndex++
                        } else {
                            failLoginLabel.visible = true
                        }
                    }
                }
                Label {
                    id: failLoginLabel
                    visible: false
                    color: "red"
                    text: qsTr("Неверный логин/пароль")
                }
            }
        }
    }
}
