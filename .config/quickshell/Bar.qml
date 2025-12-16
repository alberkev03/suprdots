import Quickshell
import Quickshell.Wayland
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

PanelWindow {
      anchors {
        top: true
        left: true
        right: true
      }
      color: "#11111b" 
      implicitHeight: 30
      RowLayout {
        anchors.fill: parent
        spacing: 5
        Workspaces{}
        Item { Layout.fillWidth: true }
        CpuProc{}
        Time{}
      }
}