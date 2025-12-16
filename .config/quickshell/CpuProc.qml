import Quickshell
import Quickshell.Io
import QtQuick

Text {
    id: cpuUsage
    color: "white"
    Process {
        id: cpuProc
        running: true
        command: ["bash", "-c", "awk '{u=$2+$4; t=$2+$4+$5} END {printf \"%.0f%%\", u*100/t}' <(grep 'cpu ' /proc/stat)"]
        stdout: StdioCollector {
            onStreamFinished: {
                let usage = text.trim();
                cpuUsage.text = usage
            }
        }
    }
    Timer {
        interval: 1000
        running: true
        repeat: true
        onTriggered: {
            cpuProc.restart();
        }
    }

}

