import QtQuick

Window {
    width: 900
    height: 480
    visible: true
    title: qsTr("Yasmeen")
    Rectangle{
        id:rect1Id
        width: 100
        height:100
        color: "red"
        border.color: "blue"
        border.width: 10
        //anchors.centerIn: parent
        x:100
        y:200
        radius: 20  // Makes corners rounded
        Text {
            id: rect1txtId
            text: qsTr("Hello")
            anchors.centerIn: parent
            font.pointSize: 15
            font.bold: true
            font.family: "Times new roman"
        }


    }
    Rectangle{
        id:rect2Id
        width: 100
        height:100
        color: "green"
        border.color: "gray"
        border.width: 10
        x:rect1Id.x  +rect1Id.width +50
        y:rect1Id.y
        radius: 30  // Makes corners rounded
        Text {
            id: rect2txtId
            text: qsTr("world")
            anchors.centerIn: parent
            font.pointSize: 15
            font.bold: true
            font.family: "Times new roman"

        }


    }

    Rectangle{
        id:rect3Id
        width: 100
        height:100
        color: "blue"
        border.color: "yellow"
        border.width: 10
        //anchors.centerIn: parent
        x:rect2Id.x  +rect2Id.width +50
        y:rect2Id.y
        radius: 25  // Makes corners rounded
        Text {
            id: rect3txtId
            text: qsTr("!")
            anchors.centerIn: parent
            font.pointSize: 15
            font.bold: true
            font.family: "Times new roman"
        }


    }

    Rectangle{
        id:rect4Id
        width: 100
        height:100
        color: "purple"
        border.color: "black"
        border.width: 10
        //anchors.centerIn: parent
        x:rect3Id.x  +rect3Id.width +50
        y:rect3Id.y
        radius: 10
        Text {
            id: rect4txtId
            text: qsTr("Yasmeen")
            anchors.centerIn: parent
            font.pointSize: 15
            font.bold: true
            font.family: "Times new roman"
        }


    }

    Rectangle {
        id: circle1Id
        width: 100
        height: 100
        radius: width/2
        color: "pink"
        border.color: "gray"
        border.width: 10
        x: rect4Id.x + rect4Id.width + 50
        y: rect4Id.y

        Text {
            id: circletxtId
            text: qsTr("Yasser")
            anchors.centerIn: parent
            font.pointSize: 15
            font.bold: true
            font.family: "Times New Roman"
        }
    }




}
