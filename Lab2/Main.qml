import QtQuick
import QtQuick.Controls
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Lab 2")
/*
    //some variables
    property string mystring: "Yasmeen Yasser"
    property string msg: "Hello"
    property int myint: 50
    property bool isTrue: true
    property double mydouble: 22.5
    property url myurl: "https://github.com/YasmeenYasser611/ITI_9M_QT"
    onMsgChanged:
    {
        console.log("msg is changed to" , msg)
    }

    Rectangle
    {
        //1-first but the id= rect objectName
        id: rect1id
        //width: 200
        width: myint + mydouble *2
        height:myint *1.5
        color:  Qt.application.active ? "yellow":"red"
        radius: 5
        //rectangle boarder
        border.color: "gray"
        border.width: 5
      /*
        another way to create boarders
        border
        {
            width:5
            color:"gray"
        }


        //to be in the ceter of the parent , instade of the top left corner
        anchors.centerIn: parent


        Text {
            id: text1id
            anchors.centerIn: parent
            //text: mystring

            //text: "MD5 encryption of HelloWorld is :"+ Qt.md5(" HelloWorld")
            text: msg
            font.bold: isTrue ? true : false
            font.pixelSize: 25
        }

    }
    Button
    {
        id : btnid
        text: "changeText"
        x:rect1id.x
        y:rect1id.y +100
        onClicked:
        {
            msg="msg updated at"+ new Date().toLocaleTimeString()
        }

    }*/

    /*Column{
        spacing: 10
        Rectangle
        {

            id: rect2id
            x:10
            y:10
            width: 100
            height: 100
            color:"yellow"


        }
        Rectangle
        {

            id: rect3id
            x:10
            y:10
            width: 100
            height: 100
            color:"red"


        }
        Rectangle
        {

            id: rect4id
            x:10
            y:10
            width: 100
            height: 100
            color:"green"


        }

    }

    Row{
        spacing: 10
        Rectangle
        {

            id: rect5id
            x:10
            y:10
            width: 100
            height: 100
            color:"yellow"


        }
        Rectangle
        {

            id: rect6id
            x:10
            y:10
            width: 100
            height: 100
            color:"red"


        }
        Rectangle
        {

            id: rect7id
            x:10
            y:10
            width: 100
            height: 100
            color:"green"


        }

    }*/

  /*  Row{
        //gred test
        spacing: 10
        Column{
                spacing: 10
                Rectangle
                {

                    id: rect2id
                    x:10
                    y:10
                    width: 100
                    height: 100
                    color:"yellow"


                }
                Rectangle
                {

                    id: rect3id
                    x:10
                    y:10
                    width: 100
                    height: 100
                    color:"red"


                }
                Rectangle
                {

                    id: rect8id
                    x:10
                    y:10
                    width: 100
                    height: 100
                    color:"green"


                }

            }
        Column{
                spacing: 10
                Rectangle
                {

                    id: rect9id
                    x:10
                    y:10
                    width: 100
                    height: 100
                    color:"yellow"


                }
                Rectangle
                {

                    id: rect5id
                    x:10
                    y:10
                    width: 100
                    height: 100
                    color:"red"


                }
                Rectangle
                {

                    id: rect6id
                    x:10
                    y:10
                    width: 100
                    height: 100
                    color:"green"


                }

            }


    }*/

    Item
    {
        id: containerItemId
        width: 600
        height: 400

        /*
        Rectangle
        {

            id: rect6id
            color:"blue"
            anchors.fill: parent
            Text
            {
                id: text2id;text:qsTr("hello worled");color: "red"
                //font.pixelSize: 30
                //font.family: "Helvetica"

                font
                {
                    family: "Helvetica"
                    bold: true
                    pointSize: 25
                }
            }

        }*/
        //1-load image from the project working directory
        Image {
            id: image1Id
            source: "file:1.png"
            width: 300
            height: 150
            Text {
                id: text2id
                text: qsTr("loading from working directory")
                y:image1Id.y + image1Id.height
            }
        }

        //2-load image by full Path
        Image {
            id: image2Id
            source: "file:/home/yasmeen/Downloads/h.jpg"
            width: 300
            height: 150
            x:image1Id.x + image1Id.width +10
            Text {
                id: text3id
                text: qsTr("loading by full Path") //full path is os dependent
                y:image2Id.y + image2Id.height
            }
        }

        //3-pic is embedded in the resources of the app
        Image {
            id: image3Id
            source: "qrc:/images/hi.jpeg"
            width: 300
            height: 150
            x:image2Id.x + image2Id.width +10
            Text {
                id: text4id
                text: qsTr("embedded in app resources") //full path is os dependent
                y:image3Id.y + image3Id.height
            }



        }

        //4- load from internet
        Image {
            id: image4Id
            source: "https://i.pinimg.com/736x/01/5b/81/015b817adfbf32e59ee12ac1b6f084a7.jpg"
            width: 600
            height: 150
            x:image3Id.x + image3Id.width +10
            Text {
                id: text5id
                text: qsTr("loading from internet ") //full path is os dependent
                y:image4Id.y + image4Id.height
            }



        }




    }
}
