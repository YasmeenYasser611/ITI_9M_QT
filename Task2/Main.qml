import QtQuick 2.15
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Task 2")
    Column
    {
    spacing: 20
    anchors.centerIn: parent

    Row {
        spacing: 20

        Column {
            spacing: 10
            Button {
                id: btn1id
                width: 150
                height: 100

                background: Rectangle{
                    color: Qt.application.active ?"lightblue": "red"

                }
                Text {
                    id: text1id
                    anchors.centerIn: parent
                    text: "Click Me"
                    font
                    {
                        family: "DejaVu Sans"
                        bold: true
                        pointSize: 15
                    }

                }
                onClicked :
                {
                    image1Id.visible = true
                    text1id.visible = false

                }

                Image {
                    id: image1Id
                    source: "file:1.jpg"
                    anchors.fill: parent
                    visible: false
                }
            }

            Button {
                id: btn2id
                width: 150
                height: 100
                background: Rectangle{
                    color: Qt.application.active ?"blue": "red"

                }
                Text {
                    id: text2id
                    anchors.centerIn: parent
                    text: "Click Me"
                    font
                    {
                        family: "DejaVu Sans"
                        bold: true
                        pointSize: 15
                    }

                }
                onClicked :
                {
                    image2Id.visible = true
                    text2id.visible = false

                }

                Image {
                    id: image2Id
                    source: "file:/home/yasmeen/Downloads/h.jpg"
                    anchors.fill: parent
                    visible: false
                }
            }
        }

        Column {
            spacing: 10
            Button {
                id: btn3id
                width: 150
                height: 100
                background: Rectangle{
                    color: Qt.application.active ?"pink": "red"

                }
                Text {
                    id: text3id
                    anchors.centerIn: parent
                    text: "Click Me"
                    font
                    {
                        family: "DejaVu Sans"
                        bold: true
                        pointSize: 15
                    }

                }
                onClicked :
                {
                    image3Id.visible = true
                    text3id.visible = false

                }

                Image {
                    id: image3Id
                    source: "qrc:/img/2.png"
                    anchors.fill: parent
                    visible: false
                }
            }

            Button {
                id: btn4id
                width: 150
                height: 100
                background: Rectangle{
                    color: Qt.application.active ?"green": "red"

                }
                Text {
                    id: text4id
                    anchors.centerIn: parent
                    text: "Click Me"
                    font
                    {
                        family: "DejaVu Sans"
                        bold: true
                        pointSize: 15
                    }

                }
                onClicked :
                {
                    image4Id.visible = true
                    text4id.visible = false

                }

                Image {
                    id: image4Id
                    source: "https://i.pinimg.com/736x/01/5b/81/015b817adfbf32e59ee12ac1b6f084a7.jpg"
                    anchors.fill: parent
                    visible: false
                }
            }


        }
    }
    Row
    {
        Button {


            id: btn5id
            width: 150
            height: 100
            background: Rectangle{
                color:Qt.application.active ? "LightSalmon" : "red"

            }
            Text {
                id: text5id
                anchors.centerIn: parent
                text: "Reset"
                font
                {
                    family: "DejaVu Sans"
                    bold: true
                    pointSize: 15
                }

            }
            onClicked :
            {
                image1Id.visible = false
                image2Id.visible = false
                image3Id.visible = false
                image4Id.visible = false
                text1id.visible = true
                text2id.visible = true
                text3id.visible = true
                text4id.visible = true


            }


        }

    }

}
}
