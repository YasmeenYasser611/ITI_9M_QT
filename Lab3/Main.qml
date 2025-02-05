import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Dialogs
Window {
    id:windo1
    width: 640
    height: 480
    visible: true
    title: qsTr("Yasmeen signals and handlers")
    /*Rectangle{
        id : rect1 //every component may have id
        width: 200
        height: 200
        color:"red"
        property string myProperty: "Hello"
        signal mysignal(string msg)*/

    /* //EX1:different signals
        MouseArea
{
            anchors.fill: parent
            hoverEnabled: true //when mouse enter without click the handler will work

            //when you press you emmit signal ---> action
            //1-click is a signal will let the system know that the event is occure
            //onclick is the handler of the signel

            onClicked: { //if you click anywhere in the parent *rectangle*
                console.log("rectangle is clicked")
                rect1.color="purple"
            }


            //2-another signal double click
            // handler --> onDoubleClicked:

            onDoubleClicked:{ //if you click anywhere in the parent *rectangle*
                console.log("rectangle is double clicked")
                rect1.color="blue"
            }

            //3-another signal entered
            // handler --> onentered if the mouse is on the rectangle:

            onEntered: { //if you click anywhere in the parent *rectangle*
                console.log("you are in rectangle")
                rect1.color="pink"
            }


            //4- signal on exit if you are out the rectangle
            onExited:
            {
                console.log("you are out")
                rect1.color="yellow"
            }

            //5-if you click like draging when you realise the mouse yje coardenates of the mouse when you realese it will appere
            onReleased: mouse =>{ //arrow function to know the x and y that mouse on realesed
                            console.log("Released at x: " + mouse.x + " , y: " + mouse.y)
                        }
        }*/

    /* //EX:2 property and handlers



        //for any property youn make in qml ,
        //qt qml create signal named [<propertyName>Chaned
        // Handler is >> on[PropertyName]Changed

        //EX: for rectangle width property:
        onWidthChanged: {
            console.log("the width is changed to :" + rect1.width) //log the new width
        }

        //EX: for rectangle height property:
        onHeightChanged: {
            console.log("the height is changed to :" + rect1.height) //log the new height
        }


        //EX: for rectangle height property:
        onColorChanged: {
            console.log("the color is changed to :" + rect1.color) //log the new color
        }


        //EX: for rectangle  myproperty:
        onMyPropertyChanged:{
            console.log("the myproperty is changed to :" + rect1.myProperty) //log the new myproperty
        }


        //to test teh change
        MouseArea{
            anchors.fill: parent
            onClicked:
            {
                rect1.width+=10
                rect1.height+=5
                rect1.color="blue"
                rect1.myProperty ="my name is yasmeen"
            }
        }




        MouseArea{
            id : mouse1
            anchors.fill: parent
        }
        Connections
        { //if you want to handle anything outside its parent
            target: mouse1
            function onClicked () //write like function that is the new way
            {
                rect1.width+=10
                rect1.height+=5
                rect1.color="blue"
                rect1.myProperty ="my name is yasmeen"
            }
        }*/
    /*//EX3:create custom signal
        //setup signal create custon signal and its handler
        //create signal that take parameter as string  and its name is msg
        //signal mysignal(string msg)

        //the signal handler , we use function because the signal takes parameter
        onMysignal: function(msg)
        {
            //the handler will just log the message
            console.log("the message : " + msg)
        }

        MouseArea
        {
            anchors.fill: parent
            onClicked: { //the event that will fire the signal , any one will fire the signal he should send message with the signal
                //fire for signal
                rect1.mysignal("Hello Worled , I am Happy .")
            }
        }
        */


     /* //Ex4: custom handler

//what if we did not want to use the signal handlr but we want to connect the signal with another function
        //set up my own method *function*
        //signal mysignal(string msg)



        //the function , amd the defult handler is not implemented onMySignal , so we could create custom handler an dcustom signal
        function myOwnFunction(msg)
        {

            console.log(msg)
        }

        MouseArea
        {
            anchors.fill: parent
            onClicked: { //the event that will fire the signal , any one will fire the signal he should send message with the signal
                //fire for signal
                rect1.mysignal("Hello Worled , I am Happy .")
            }
        }*/




        /*positioners */

       /* //1-Flow arreng component according to the size dynamic rearrange
        Flow{
            anchors.fill: parent
            spacing: 15

            //control direction from right to left or nor if commented will be from left
            layoutDirection: Flow.TopToBottom

            Rectangle
            {
                id:rect2
                width: 100
                height: 100
                color: "magenta"
                Text{
                    id:rect1text
                    text:qsTr("one")
                    anchors.centerIn: parent
                }
            }
            Rectangle
            {
                id:rect3
                width: 100
                height: 100
                color: "blue"
                Text{
                    id:rect2text
                    text:qsTr("two")
                    anchors.centerIn: parent
                }
            }

            Rectangle
            {
                id:rect4
                width: 100
                height: 100
                color: "red"
                Text{
                    id:rect3text
                    text:qsTr("tree")
                    anchors.centerIn: parent
                }
            }

            Rectangle
            {
                id:rect5
                width: 100
                height: 100
                color: "green"
                Text{
                    id:rect4text
                    text:qsTr("four")
                    anchors.centerIn: parent
                }
            }
            Rectangle
            {
                id:rect6
                width: 100
                height: 100
                color: "yellow"
                Text{
                    id:rect5text
                    text:qsTr("five")
                    anchors.centerIn: parent
                }
            }
            Rectangle
            {
                id:rect7
                width: 100
                height: 100
                color: "gray"
                Text{
                    id:rect6text
                    text:qsTr("6")
                    anchors.centerIn: parent
                }
            }
            Rectangle
            {
                id:rect8
                width: 100
                height: 100
                color: "blue"
                Text{
                    id:rect7text
                    text:qsTr("7")
                    anchors.centerIn: parent
                }
            }
        }


*/



  /*  //2-grid like the mobile home screen
     Grid{
         anchors.fill: parent
         spacing: 15

         //control direction from right to left or nor if commented will be from left
         //layoutDirection: Flow.TopToBottom

         anchors.centerIn: parent
         columns: 3
         rows : 3
         Rectangle
         {
             id:rect2
             width: 100
             height: 100
             color: "magenta"
             Text{
                 id:rect1text
                 text:qsTr("one")
                 anchors.centerIn: parent
             }
         }
         Rectangle
         {
             id:rect3
             width: 100
             height: 100
             color: "blue"
             Text{
                 id:rect2text
                 text:qsTr("two")
                 anchors.centerIn: parent
             }
         }

         Rectangle
         {
             id:rect4
             width: 100
             height: 100
             color: "red"
             Text{
                 id:rect3text
                 text:qsTr("tree")
                 anchors.centerIn: parent
             }
         }

         Rectangle
         {
             id:rect5
             width: 100
             height: 100
             color: "green"
             Text{
                 id:rect4text
                 text:qsTr("four")
                 anchors.centerIn: parent
             }
         }
         Rectangle
         {
             id:rect6
             width: 100
             height: 100
             color: "yellow"
             Text{
                 id:rect5text
                 text:qsTr("five")
                 anchors.centerIn: parent
             }
         }
         Rectangle
         {
             id:rect7
             width: 100
             height: 100
             color: "gray"
             Text{
                 id:rect6text
                 text:qsTr("6")
                 anchors.centerIn: parent
             }
         }
         Rectangle
         {
             id:rect8
             width: 100
             height: 100
             color: "blue"
             Text{
                 id:rect7text
                 text:qsTr("7")
                 anchors.centerIn: parent
             }
         }
         Rectangle
         {
             id:rect9
             width: 100
             height: 100
             color: "gray"
             Text{
                 id:rect8text
                 text:qsTr("8")
                 anchors.centerIn: parent
             }
         }
         Rectangle
         {
             id:rect10
             width: 100
             height: 100
             color: "blue"
             Text{
                 id:rect9text
                 text:qsTr("9")
                 anchors.centerIn: parent
             }
         }
     }
*/


  /*  //3-layoutt components inside area arrengment
      GridLayout{

          anchors.centerIn: parent
          columns: 3
          rows : 3
          Rectangle
          {
              id:rect2
              width: 100
              height: 100
              color: "magenta"
              Text{
                  id:rect1text
                  text:qsTr("one")
                  anchors.centerIn: parent
              }
          }
          Rectangle
          {
              id:rect3
              width: 100
              height: 100
              color: "blue"
              Text{
                  id:rect2text
                  text:qsTr("two")
                  anchors.centerIn: parent
              }
          }

          Rectangle
          {
              id:rect4
              width: 100
              height: 100
              color: "red"
              Text{
                  id:rect3text
                  text:qsTr("tree")
                  anchors.centerIn: parent
              }
          }

          Rectangle
          {
              id:rect5
              width: 100
              height: 100
              color: "green"
              Text{
                  id:rect4text
                  text:qsTr("four")
                  anchors.centerIn: parent
              }
          }
          Rectangle
          {
              id:rect6
              width: 100
              height: 100
              color: "yellow"
              Text{
                  id:rect5text
                  text:qsTr("five")
                  anchors.centerIn: parent
              }
          }
          Rectangle
          {
              id:rect7
              width: 100
              height: 100
              color: "gray"
              Text{
                  id:rect6text
                  text:qsTr("6")
                  anchors.centerIn: parent
              }
          }
          Rectangle
          {
              id:rect8
              width: 100
              height: 100
              color: "blue"
              Text{
                  id:rect7text
                  text:qsTr("7")
                  anchors.centerIn: parent
              }
          }
          Rectangle
          {
              id:rect9
              width: 100
              height: 100
              color: "gray"
              Text{
                  id:rect8text
                  text:qsTr("8")
                  anchors.centerIn: parent
              }
          }
          Rectangle
          {
              id:rect10
              width: 100
              height: 100
              color: "blue"
              Text{
                  id:rect9text
                  text:qsTr("9")
                  anchors.centerIn: parent
              }
          }
      }
      */

/*components*/
//buttons
   /* ColumnLayout{


    anchors.centerIn: parent
    Button
    {
        id : btn1
        text: "start"
        onClicked:
        {
            console.log("button  1 is clicked")
            busy1.running=true
        }

    }

    //button
    Button
    {
        id : btn2
        text: "stop"
        onClicked:
        {
            console.log("button 2 is clicked")
            busy1.running=false
        }

}
}*/
    //BusyIndicator
  /*  ColumnLayout
    {
        width: parent.width
        BusyIndicator
        {
            id:busy1
            anchors.centerIn: parent
            running: false
            Layout.alignment:Qt.AlignHCenter

        }
    }

//CheckBox
    Column{
        spacing: 20
        anchors.horizontalCenter: parent.horizontalCenter

        CheckBox{
            text: "op1"
            checked: false
            onCheckedChanged: {
                if(checked)
                {
                    console.log("optoon1 is checked")
                }
                else
                {
                    console.log("optoon1 is  not checked")
                }
            }
        }
        CheckBox{
            text: "op2"
            checked: false
            onCheckedChanged: {
                if(checked)
                {
                    console.log("optoon2 is checked")
                }
                else
                {
                    console.log("optoon2 is  not checked")
                }
            }
        }
    }*/



    //compobox

  /*  ColumnLayout{
        width: parent.width
        height: parent.height
        //non editable
        Label{
            text:"Non Editable combo box"
            wrapMode: Label.Wrap //when text too big it wrap do not truncate
            Layout.fillWidth: true

        }
        ComboBox{
            id:combo1
            model:["1 ", "2" , "3" , "4"]
            Layout.fillWidth: true
            onActivated: {
                console.log("currentINdex:"+ currentIndex + " , current text: "+ currentText + " is Activated")
            }
        }
    }*/


    //Knob = dail
   /* Column{
        width: parent.width
        spacing: 10
        Label{
            width: parent.width
            horizontalAlignment: Qt.AlignHCenter
            text: "Knob/Dial"
            font.pointSize: 25

        }
        Dial{
            anchors.horizontalCenter: parent.horizontalCenter
            from: 0
            to:200
            value: 0
            onValueChanged: {
                console.log("Current value: " + value)
                t1.text=value
            }
        }

        Text {
            id: t1
            anchors.horizontalCenter: parent.horizontalCenter
            text: qsTr("defult")
            font.bold: true
        }
    }*/

    //swipe View

  /*  SwipeView{
        id:swip1
        anchors.fill: parent
        anchors.bottomMargin: 25
        currentIndex: page1ind.currentIndex
        Image {
            id: im1
            source: "file:1.jpeg"
            fillMode: Image.PreserveAspectFit
        }
        Image {
            id: im2
            source: "file:2.png"
            fillMode: Image.PreserveAspectFit
        }
        Image {
            id: im3
            source: "file:3.jpg"
            fillMode: Image.PreserveAspectFit
        }
    }

    PageIndicator
    {
        //to indiecate wich page we are in
        id: page1ind
        count:swip1.count //number of small circules = num of images in swip view
        currentIndex: swip1.currentIndex
        anchors.bottom: swip1.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }*/


    //progress bat

  /*  Column
    {
        spacing: 20
        anchors.centerIn: parent
    ProgressBar
    {
        id: progress1
        from:0
        to:100
        value:0
        width: 300
    }
    //there is 2 types of progress bar
    Button{
        text: "start"
        onClicked: {
            animation1.start()
        }
    }
    Button{
        text: "indeterminated progress bar mode"
        onClicked: {
            progress1.indeterminate= ! progress1.indeterminate //not showing when to stop or whre he is , if we click again he will stop that is because of the inversion
        }
    }
    }
    //animation for progress MenuBar
    NumberAnimation{
        id:animation1
        target: progress1 //determine wich to add animation to
        property: "value"
        from:0
        to:100
        duration:3000 //3sec
    }*/

    //range slider
    /*RangeSlider{
        id: rangeslider1
        anchors.centerIn: parent
        from:1
        to:100
        first.value:0
        second.value: 100
        stepSize: 5
    }
    Column{
        spacing: 10
        anchors.centerIn: parent
        Text {
            id: mintextid
            text: qsTr("mini value"+ rangeslider1.first.value.toFixed(2))
        }

        Text {
            id: maxtextid
            text: qsTr("second value"+ rangeslider1.second.value.toFixed(2))
        }
    }*/


 /*  //slider
    Column{
        spacing: 20
        anchors.centerIn: parent
        Text {
            id: textid
            text: qsTr("value :0")
        }
        Slider{
            id:slider1
            width: 400
            from:0
            to:100
            value:0
            onValueChanged: {
                textid.text="value:0"+value

            }

    }

    }



*/

  /*  //switch
    Column{
        anchors.centerIn: parent
        spacing: 20
        Switch{
            text:"wifi"

        }
        Switch{
            text:"blutooth"

        }
    }*/

 /*   //stack view (pages holder)
    StackView{
        id:stackview1
        anchors.fill: parent
        //must add initial page
        initialItem: homepage
    }

    Page{
        id:homepage
        Rectangle{
            anchors.fill: parent
            color: "yellowgreen"
            Column{
                anchors.centerIn: parent
                spacing: 10
                Text {
                    id: txt1
                    text: qsTr("This is home page")
                    font.bold:true
                    font.pointSize: 25

                }
                Button{
                    text: "settings page"
                    onClicked: {
                        //push page 2 above the current page
                        stackview1.push(settingpage)
                    }
                }
            }
        }
    }

    Page{
        id:settingpage
        Rectangle{
            anchors.fill: parent
            color: "purple"
            Column{
                anchors.centerIn: parent
                spacing: 10
                Text {
                    id: txt2
                    text: qsTr("This is setting page")
                    font.bold:true
                    font.pointSize: 25

                }
                Button{
                    text: "home page"
                    onClicked: {
                        //because this is second page so we will pop
                        stackview1.pop()
                    }
                }
            }
        }
    }

*/

    /***********Dialogs = pop up screen *************/

   /* //1-color Dialog
    Column{
        spacing: 15
        anchors.centerIn: parent


        Button{
            text:"choose color"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: function()
            {
                //open color dialo
                colord1.open()
            }

        }
        ColorDialog{
            id:colord1
            title:"choose color"
            onAccepted: {
                console.log("color choosed:" + selectedColor.toString())
                windo1.color=selectedColor

            }
            onRejected: {
                console.log("Dialog is rejected")
            }
        }

        //text dialog
        Button{
            text:"press"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: function()
            {
              msg1.open()
            }

        }
        MessageDialog{
            id:msg1
            title:"msg dialog"
            text: "hello world, iam itiian surviver"
            buttons: MessageDialog.Ok| MessageDialog.Cancel
            onAccepted: {
                console.log("Dialog is accepted" )


            }
            onRejected: {
                console.log("Dialog is rejected")
            }
        }
    }*/


  /*  //data structire to store data paires like (key, value) pairs
    //1-model=data
    ListModel{
        id:datamodel1
        ListElement //1st element in list model
        {
           key:1
           mycolor:"red"
        }
        ListElement //1st element in list model
        {
           key:2
           mycolor:"green"
        }
        ListElement //1st element in list model
        {
           key:3
           mycolor:"yellowgreen"
        }
        ListElement //1st element in list model
        {
           key:4
           mycolor:"blue"
        }
        ListElement //1st element in list model
        {
           key:5
           mycolor:"cyan"
        }
        ListElement //1st element in list model
        {
           key:6
           mycolor:"gray"
        }
        ListElement //1st element in list model
        {
           key:7
           mycolor:"white"
        }
        ListElement //1st element in list model
        {
           key:8
           mycolor:"pink"
        }
        ListElement //1st element in list model
        {
           key:9
           mycolor:"purple"
        }
    }
    //2-data view
    GridView{
        id:grid1
        anchors.fill: parent
        model: datamodel1

        //3- to build the single cell of the grid ViewSection
        delegate: Rectangle{ //each cell will be rectangle
            width: 100
            height: width
            color: mycolor //one from the 9 colors from the list elements
            radius: 10
            Text {
                text: key
                font.pointSize: 25
            }
        }
    }

*/

/******animations*******/

    /*  YasmeenRect{
       id:rect55
       x:50
       y:50
       width: 100
       height: 100
       radius: 10
       color: "red"

       anchors.centerIn: parent
       onMyclicked:{
          //transation
           x+=20

           //rotation
           rotation+=7
           //3% bigger each time
           scale+=0.03



       }


   }*/

    /*   Rectangle{
           id:containerRectId
           anchors.fill: parent
           color: "blue"
           Rectangle{
               id:containedRectId
               width: 100
               height:100
               radius: 10
               color:"yellow"
               x:5
               y:50

               PropertyAnimation on x{
                   //the rect will move in x direction  in 2sec
                   to:520
                   duration:2000 //2sec
               }

              PropertyAnimation on y{
                   //the rect will move in y direction
                   to: 400
                   duration: 2000


               }

               NumberAnimation on y{ //=to PropertyAnimation no difeerence
                   //the rect will move in y direction
                   to: 400
                   duration: 2000


               }

               RotationAnimation on rotation{
                   to:90
                   duration: 2000

               }






           }




       }*/

  /*   //color anemaation
       Rectangle{
           id:containerRectId
           anchors.centerIn: parent
           color: "blue"
           width: 100
           height:100
           radius: 10
           ColorAnimation {
               id:animation
               from: "cyan"
               to: "black"
               property: "color"
               target:containerRectId
               duration: 2000
           }
           MouseArea{
               anchors.fill: parent
               onClicked: function(){
                   animation.start()
               }
           }

       }*/




    // }

    /*
    //when the window of the application appears only = when the start , we do it under the window component
    Component.onCompleted:
    {
        //to make my own function as the handler of the signal
        rect1.mysignal.connect(rect1.myOwnFunction)

    }*/

}

