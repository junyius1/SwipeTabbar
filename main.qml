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
    TabBar {
        id: tabBar
        width: parent.width
         currentIndex: swipeView.currentIndex

        Repeater {
            model: ["First", "Second", "Third", "Fourth", "Fifth", "six"]

            TabButton {
                text: modelData
                width: Math.max(100, tabBar.width / 6)
            }
        }
    }
}
