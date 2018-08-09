import QtQuick 2.0
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.11
Rectangle{
    id:root
    color:"lightsteelblue"
    width: 400
    height: 750
    //数据模型
    property var json:
    [
        [
            { "Num": "X000", "Val": 0,"Notes":"这是描述" },
            { "Num": "X001", "Val": 1 ,"Notes":"这是描述"},
            { "Num": "X002", "Val": 0 ,"Notes":"这是描述"},
            { "Num": "X003", "Val": 1,"Notes":"这是描述" },
            { "Num": "X004", "Val": 0,"Notes":"这是描述" },
	    { "Num": "X005", "Val": 1,"Notes":"这是描述" },
            { "Num": "X006", "Val": 0 ,"Notes":"这是描述"},
            { "Num": "X007", "Val": 1 ,"Notes":"这是描述"},
            { "Num": "X008", "Val": 0,"Notes":"这是描述" },
            { "Num": "X009", "Val": 1,"Notes":"这是描述" }
        ],
        [
	    { "Num": "X010", "Val": 1,"Notes":"这是描述" },
            { "Num": "X011", "Val": 0 ,"Notes":"这是描述"},
            { "Num": "X012", "Val": 1 ,"Notes":"这是描述"},
            { "Num": "X013", "Val": 0,"Notes":"这是描述" },
            { "Num": "X014", "Val": 1,"Notes":"这是描述" },
	    { "Num": "X015", "Val": 0,"Notes":"这是描述" },
            { "Num": "X016", "Val": 1 ,"Notes":"这是描述"},
            { "Num": "X017", "Val": 0 ,"Notes":"这是描述"},
            { "Num": "X018", "Val": 1,"Notes":"这是描述" },
            { "Num": "X019", "Val": 0,"Notes":"这是描述" }
        ],
        [
	    { "Num": "X020", "Val": 0,"Notes":"这是描述" },
            { "Num": "X021", "Val": 1,"Notes":"这是描述"},
            { "Num": "X022", "Val": 0,"Notes":"这是描述"},
            { "Num": "X023", "Val": 1,"Notes":"这是描述" },
            { "Num": "X024", "Val": 0,"Notes":"这是描述" },
	    { "Num": "X025", "Val": 1,"Notes":"这是描述" },
            { "Num": "X026", "Val": 0,"Notes":"这是描述"},
            { "Num": "X027", "Val": 1,"Notes":"这是描述"},
            { "Num": "X028", "Val": 0,"Notes":"这是描述" },
            { "Num": "X029", "Val": 1,"Notes":"这是描述" }
        ],
        [
	    { "Num": "X030", "Val": 1,"Notes":"这是描述" },
            { "Num": "X031", "Val": 0,"Notes":"这是描述"},
            { "Num": "X032", "Val": 1,"Notes":"这是描述"},
            { "Num": "X033", "Val": 0,"Notes":"这是描述" },
            { "Num": "X034", "Val": 1,"Notes":"这是描述" },
	    { "Num": "X035", "Val": 0,"Notes":"这是描述" },
            { "Num": "X036", "Val": 1,"Notes":"这是描述"},
            { "Num": "X037", "Val": 0,"Notes":"这是描述"},
            { "Num": "X038", "Val": 1,"Notes":"这是描述" },
            { "Num": "X039", "Val": 0,"Notes":"这是描述" }
        ]
    ]
    Column{
        spacing: 10
        ListModel{
            id:pmodel
            Component.onCompleted: append(json[0])
        }
        ListView{
            id:listview
            width: root.width-4
            height: root.height-30
            clip:true
            model:pmodel
            header: headerView;
            highlight:Rectangle{
                //y:listview.currentItem.y
                color:"#604BBDE8"
                Behavior on y{
                    SpringAnimation{duration: 300;damping: 0.2}
                }
            }
            highlightFollowsCurrentItem:true
            highlightMoveDuration:0
            spacing:5
            delegate: Rectangle{
                width:parent.width
                height: 60
                color:"transparent"
                border.width: 1
                border.color: "white"
                MouseArea{
                    anchors.fill: parent
                    onClicked:listview.currentIndex=index
                }
                Row{
                    spacing: 5
                    width:parent.width
                    height: parent.height
                    anchors.verticalCenter: parent.verticalCenter
                    Text{
                        text: Num
                        color:"gray";
			anchors.verticalCenter: parent.verticalCenter;
		        width: 40;
                        horizontalAlignment: Text.AlignLeft;
                    }
		    Rectangle{
		        width: 26; height: 26; radius: 13;
                        color: Val === 0 ? "red" : "green";
			anchors.verticalCenter: parent.verticalCenter;
		        Text{
			    text: Val;
			    color: "gray";
			    anchors.centerIn: parent;
                    	}
                    }
                    Rectangle{
                        width: 40;height: 26;color: "transparent";
                    }
                    Text{
                        text: Notes
                        color:"white"
                        elide: Text.ElideLeft
                        width: listview.width-40
			anchors.verticalCenter: parent.verticalCenter;
                        horizontalAlignment: Text.AlignLeft;
                    }
                }
            }
            //列表选择显示
            /*ListViewIndicator{
                target : listview
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 5
                z: 2
            }*/
        }
    }
    //分页导航
    PageNavigationBar
    {
        id: pageNavigationBar
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.margins: 5
        maxPage: json.length
        totalRecord: json.length * json[0].length
        onPageClicked:
        {
            pmodel.clear( );
            pmodel.append( json[page - 1] );
        }
    }
    Component{
        id: headerView;
        Item{
            width: parent.width;
            height: 30;
            RowLayout{
                anchors.left: parent.left;
                anchors.verticalCenter: parent.verticalCenter;
                spacing: 8;
                Text{
                    text: "Num";
                    font.bold: true;
                    font.pixelSize: 20;
                    Layout.preferredWidth: 40;
                }
                Text{
                    text: "Val";
                    font.bold: true;
                    font.pixelSize: 20;
                    Layout.preferredWidth: 40;
                }
                Text{
                    text: "Notes";
                    font.bold: true;
                    font.pixelSize: 20;
                    Layout.fillWidth: true;
                }
            }
        }
    }
}
