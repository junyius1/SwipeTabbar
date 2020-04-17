import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    visible: true
    width: 480
    height: 640
    title: qsTr("Tabs")

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page1Form {
        }

        Page2Form {
        }
        Page1Form {
        }
        Page2Form {
        }
        Page1Form {
        }
        Page2Form {
        }
    }

//    footer: TabBar {
//        id: tabBar
//        currentIndex: swipeView.currentIndex

//        TabButton {
//            text: qsTr("Page 1")
//        }
//        TabButton {
//            text: qsTr("Page 2")
//        }
//    }
    Component {
        id: _newTab
        TabButton {
            property string title: ""

            text: title
            width: Math.max(100, tabBar.width / 6)
        }
    }
    TabBar {
        id: tabBar
        width: parent.width
         currentIndex: swipeView.currentIndex

        Repeater {
        }

        Component.onCompleted: {
            for(var i =0; i< 6; i++){
                tabBar.addItem(_newTab.createObject(tabBar, {title: "hello_"+i}))
            }
        }
    }
}
