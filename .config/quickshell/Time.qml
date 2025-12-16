import Quickshell
import QtQuick
import Quickshell.Io

Text {
    id: clock
    color: "#cdd6f4"
    font {
        family: "JetBrains Mono"
        pixelSize: 16
        bold: true
    }
    Process {
    id: clockCommand
    command: ["date", "+%H:%M"]
    running: true
    stdout: StdioCollector {
        onStreamFinished: clock.text = text
        }
    }
    Timer {
    interval: 60000
    running: true
    repeat: true
    onTriggered: clockCommand.running = true
    }
}