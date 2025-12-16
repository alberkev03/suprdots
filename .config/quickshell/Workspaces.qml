import Quickshell
import Quickshell.Wayland
import Quickshell.Hyprland
import QtQuick

Repeater {
  model: 9
  Text {
    property var workspaces: Hyprland.workspaces.values.find(workspace => workspace.id === index + 1)
    property bool isActive: Hyprland.focusedWorkspace?.id === (index + 1)
    text: index + 1
    color: isActive ? "#89b4fa" : "#6c7086"
    font {pixelSize: 16; bold: true}
    MouseArea {
        anchors.fill: parent
        onClicked: HyprlandIpc.dispatch(`workspace ${index + 1}`);
    }
  }

}