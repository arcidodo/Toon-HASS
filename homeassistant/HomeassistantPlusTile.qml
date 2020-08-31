import QtQuick 2.1
//import qb.base 1.0
import qb.components 1.0

Tile {
	id: homeAssistantTile

	function init() {}

	onClicked: {
		if (app.homeAssistantScreen)
			app.homeAssistantScreen.show();
	}

//	Text {
//		id: txtTimeBig
//		text: app.timeStr
//		color: colors.clockTileColor
//		anchors {
//			left: parent.left
//			leftMargin: 10
//			baseline: parent.top
//			baselineOffset: 54
//		}
//		font.pixelSize: dimState ? qfont.clockFaceText : qfont.timeAndTemperatureText - 4
//		font.family: qfont.regular.name
//		visible: app.clockTile ? true : false
//	}

//	Text {
//		id: txtDate
//		text: app.dateStr
//		color: colors.clockTileColor
//		anchors {
//			left: txtTimeBig.left
//			top: txtTimeBig.bottom
//			topMargin: -10
//		}
//		horizontalAlignment: Text.AlignHCenter
//		font.pixelSize: qfont.tileTitle - 2
//		font.family: qfont.regular.name
//		visible: app.clockTile ? !dimState : false
//	}

//	Image {
//		id: homeAssistantIconSmall
//		source: "./drawables/homeAssistantIconSmall.png"
//		anchors {
//			bottom: txtDate.bottom
//			right: parent.right
//			rightMargin: 10
//		}
//		cache: false
//		visible: app.clockTile ? !dimState : false
//	}
//
//	Image {
//		id: homeAssistantIconSmallCenter
//		source: dimState ? "./drawables/homeAssistantIconSmallDim.png" : "./drawables/homeAssistantIconSmall.png"
//		anchors {
//			baseline: parent.top
//			horizontalCenter: parent.horizontalCenter
//			baselineOffset: 15
//		}
//		cache: false
//		visible: app.clockTile ? false : true
//	}

	Rectangle {
        id: tileGrid
        color: "transparent"
		width: parent.width - 20
		//height: 60
		anchors {
			bottom: parent.top
			left: parent.left
			bottomMargin: 10
			leftMargin: 10
      baseline: parent.top
			baselineOffset: 54
		}

		Text {
			id: lblSensor1
			text: try { JSON.parse(app.homeAssistantSensor1Info)['attributes']['friendly_name'] } catch(e) { "" }
			color: colors.clockTileColor
			height: 20
			width: tileGrid.width - 40
			anchors {
				left: parent.left
				top: parent.top
				topMargin: 15
//                                left: parent.left
//                                leftMargin: 10
//                                baseline: parent.top
//                                baselineOffset: 54
			}
			font.pixelSize: 12
			font.family: qfont.regular.name
			font.bold : true
		}

		Text {
			id: valueSensor1
			text: try { (JSON.parse(app.homeAssistantSensor1Info)['state'] + " " + JSON.parse(app.homeAssistantSensor1Info)['attributes']['unit_of_measurement']).replace("undefined", "") } catch(e) { try { JSON.parse(app.homeAssistantSensor1Info)['state'] } catch(e) { "" } }
			color: colors.clockTileColor
			height: 20
			width: 40
			anchors {
				right: parent.right
				top: lblSensor1.top
				rightMargin: 0
			}
			font.pixelSize: 12
			font.family: qfont.regular.name
			font.bold : true
		}

		Text {
			id: lblSensor2
			text: try { JSON.parse(app.homeAssistantSensor2Info)['attributes']['friendly_name'] } catch(e) { "" }
			color: colors.clockTileColor
			height: 20
			width: tileGrid.width - 40
			anchors {
				left: parent.left
				top: lblSensor1.bottom
			}
			font.pixelSize: 12
			font.family: qfont.regular.name
			font.bold : true
		}

		Text {
			id: valueSensor2
			text: try { (JSON.parse(app.homeAssistantSensor2Info)['state'] + " " + JSON.parse(app.homeAssistantSensor2Info)['attributes']['unit_of_measurement']).replace("undefined", "") } catch(e) { try { JSON.parse(app.homeAssistantSensor2Info)['state'] } catch(e) { "" } }
			color: colors.clockTileColor
			height: 20
			width: 40
			anchors {
				right: parent.right
				top: lblSensor2.top
			}
			font.pixelSize: 12
			font.family: qfont.regular.name
			font.bold : true
		}

		Text {
			id: lblSensor3
			text: try { JSON.parse(app.homeAssistantSensor3Info)['attributes']['friendly_name'] } catch(e) { "" }
			color: colors.clockTileColor
			height: 20
			width: tileGrid.width - 40
			anchors {
				left: parent.left
				top: lblSensor2.bottom
			}
			font.pixelSize: 12
			font.family: qfont.regular.name
			font.bold : true
		}

		Text {
			id: valueSensor3
			text: try { (JSON.parse(app.homeAssistantSensor3Info)['state'] + " " + JSON.parse(app.homeAssistantSensor3Info)['attributes']['unit_of_measurement']).replace("undefined", "") } catch(e) { try { JSON.parse(app.homeAssistantSensor3Info)['state'] } catch(e) { "" } }
			color: colors.clockTileColor
			height: 20
			width: 40
			anchors {
				right: parent.right
				top: lblSensor3.top
			}
			font.pixelSize: 12
			font.family: qfont.regular.name
			font.bold : true
		}
		Text {
			id: lblSensor4
			text: try { JSON.parse(app.homeAssistantSensor4Info)['attributes']['friendly_name'] } catch(e) { "" }
			color: colors.clockTileColor
			height: 20
			width: tileGrid.width - 40
			anchors {
				left: parent.left
				top: lblSensor3.bottom
			}
			font.pixelSize: 12
			font.family: qfont.regular.name
			font.bold : true
		}

		Text {
			id: valueSensor4
			text: try { (JSON.parse(app.homeAssistantSensor4Info)['state'] + " " + JSON.parse(app.homeAssistantSensor4Info)['attributes']['unit_of_measurement']).replace("undefined", "") } catch(e) { try { JSON.parse(app.homeAssistantSensor4Info)['state'] } catch(e) { "" } }
			color: colors.clockTileColor
			height: 20
			width: 40
			anchors {
				right: parent.right
				top: lblSensor4.top
			}
			font.pixelSize: 12
			font.family: qfont.regular.name
			font.bold : true
		}
		Text {
			id: lblSensor5
			text: try { JSON.parse(app.homeAssistantSensor5Info)['attributes']['friendly_name'] } catch(e) { "" }
			color: colors.clockTileColor
			height: 20
			width: tileGrid.width - 40
			anchors {
				left: parent.left
				top: lblSensor4.bottom
			}
			font.pixelSize: 12
			font.family: qfont.regular.name
			font.bold : true
		}

		Text {
			id: valueSensor5
			text: try { (JSON.parse(app.homeAssistantSensor5Info)['state'] + " " + JSON.parse(app.homeAssistantSensor5Info)['attributes']['unit_of_measurement']).replace("undefined", "") } catch(e) { try { JSON.parse(app.homeAssistantSensor5Info)['state'] } catch(e) { "" } }
			color: colors.clockTileColor
			height: 20
			width: 40
			anchors {
				right: parent.right
				top: lblSensor5.top
			}
			font.pixelSize: 12
			font.family: qfont.regular.name
			font.bold : true
		}
		Text {
			id: lblSensor6
			text: try { JSON.parse(app.homeAssistantSensor6Info)['attributes']['friendly_name'] } catch(e) { "" }
			color: colors.clockTileColor
			height: 20
			width: tileGrid.width - 40
			anchors {
				left: parent.left
				top: lblSensor5.bottom
			}
			font.pixelSize: 12
			font.family: qfont.regular.name
			font.bold : true
		}

		Text {
			id: valueSensor6
			text: try { (JSON.parse(app.homeAssistantSensor6Info)['state'] + " " + JSON.parse(app.homeAssistantSensor6Info)['attributes']['unit_of_measurement']).replace("undefined", "") } catch(e) { try { JSON.parse(app.homeAssistantSensor6Info)['state'] } catch(e) { "" } }
			color: colors.clockTileColor
			height: 20
			width: 40
			anchors {
				right: parent.right
				top: lblSensor6.top
			}
			font.pixelSize: 12
			font.family: qfont.regular.name
			font.bold : true
		}
		Text {
			id: lblSensor7
			text: try { JSON.parse(app.homeAssistantSensor7Info)['attributes']['friendly_name'] } catch(e) { "" }
			color: colors.clockTileColor
			height: 20
			width: tileGrid.width - 40
			anchors {
				left: parent.left
				top: lblSensor6.bottom
			}
			font.pixelSize: 12
			font.family: qfont.regular.name
			font.bold : true
		}

		Text {
			id: valueSensor7
			text: try { (JSON.parse(app.homeAssistantSensor7Info)['state'] + " " + JSON.parse(app.homeAssistantSensor7Info)['attributes']['unit_of_measurement']).replace("undefined", "") } catch(e) { try { JSON.parse(app.homeAssistantSensor7Info)['state'] } catch(e) { "" } }
			color: colors.clockTileColor
			height: 20
			width: 40
			anchors {
				right: parent.right
				top: lblSensor7.top
			}
			font.pixelSize: 12
			font.family: qfont.regular.name
			font.bold : true
		}
		Text {
			id: lblSensor8
			text: try { JSON.parse(app.homeAssistantSensor8Info)['attributes']['friendly_name'] } catch(e) { "" }
			color: colors.clockTileColor
			height: 20
			width: tileGrid.width - 40
			anchors {
				left: parent.left
				top: lblSensor7.bottom
			}
			font.pixelSize: 12
			font.family: qfont.regular.name
			font.bold : true
		}

		Text {
			id: valueSensor8
			text: try { (JSON.parse(app.homeAssistantSensor8Info)['state'] + " " + JSON.parse(app.homeAssistantSensor8Info)['attributes']['unit_of_measurement']).replace("undefined", "") } catch(e) { try { JSON.parse(app.homeAssistantSensor8Info)['state'] } catch(e) { "" } }
			color: colors.clockTileColor
			height: 20
			width: 40
			anchors {
				right: parent.right
				top: lblSensor8.top
			}
			font.pixelSize: 12
			font.family: qfont.regular.name
			font.bold : true
		}
	}
}
