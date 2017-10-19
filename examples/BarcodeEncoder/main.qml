import QtQuick 2.6
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.3
import QZXing 2.3

ApplicationWindow {
    visible: true
    title: "BarcodeEncoder"
    property int margin: 11
    width: mainLayout.implicitWidth + 2 * margin
    height: mainLayout.implicitHeight + 2 * margin
    minimumWidth: mainLayout.implicitWidth
    minimumHeight: mainLayout.implicitHeight

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: margin
        id: mainLayout
        RowLayout {
            spacing: 10
            Layout.fillWidth: true
            TextField {
                placeholderText: "Enter data..."
                id: inputField
                echoMode: TextInput.Normal
                //anchors.top: parent.top
                //anchors.left: parent.left
                //anchors.margins: 10
            }
            Button {
                id: submit
                //anchors.top: parent.top
                //anchors.left: inputField.right
                //anchors.right: parent.right
                text: "encode"
                //anchors.margins: 10
                onClicked: {
                    qzxing.encodeData(inputField.text)
                    inputField.text = "";
                    resultImage.source = "";
                    resultImage.source = "image://QZXing/latestEncoded";
                }
            }
        }


        GroupBox {
            //anchors.top: inputField.bottom
            //anchors.bottom: parent.bottom
            //anchors.left: parent.left
            //anchors.right: parent.right
            //anchors.margins: 10
            title: "Result barcode image"
            //clip: true

            Image {
                id:resultImage
                anchors.centerIn: parent
                cache: false;
            }
        }
    }

    QZXing {
        id: qzxing
    }
}
