import QtQuick

Rectangle {
    id:rootRect
    //create signal wich its handler in another qml
    signal myclicked
    MouseArea{
        anchors.fill: parent
        onClicked: {
            //emit signal fire my signal wich handler is in the main.qml
            rootRect.myclicked()

        }
    }

}
