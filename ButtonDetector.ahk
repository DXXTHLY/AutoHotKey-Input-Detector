; Create a GUI window
Gui, +AlwaysOnTop +ToolWindow
Gui, Font, s12, Arial
Gui, Add, Text, vOutputText, Press a button, trigger, or move a joystick...
Gui, Show, w400 h150, Controller Input Detector

; Threshold for joystick movements (adjust as needed)
threshold := 50

; Main loop to detect button/axis/joystick inputs
Loop {
    ; Check buttons 1 to 32
    Loop, 32 {
        if (GetKeyState("Joy" A_Index)) {
            GuiControl,, OutputText, Button Joy%A_Index% is pressed
            Sleep, 1000
            GuiControl,, OutputText, Press a button, trigger, or move a joystick...
        }
    }

    ; Check axes (triggers and joysticks)
    axes := ["X", "Y", "Z", "R", "U", "V"]  ; Common axis names for Xbox 360 controller
    Loop, 6 {
        axisName := axes[A_Index]
        axisValue := GetKeyState("Joy" . axisName)  ; Get axis value

        ; Apply threshold for joystick movements
        if (axisValue < -threshold || axisValue > threshold) {
            GuiControl,, OutputText, Axis %axisName% is active (Value: %axisValue%)
            Sleep, 1000
            GuiControl,, OutputText, Press a button, trigger, or move a joystick...
        }
    }

    ; Check POV (joystick directions)
    povValue := GetKeyState("JoyPOV")  ; POV hat switch
    if (povValue != -1) {
        GuiControl,, OutputText, POV Hat is active (Value: %povValue%)
        Sleep, 1000
        GuiControl,, OutputText, Press a button, trigger, or move a joystick...
    }

    Sleep, 100
}

; Close the GUI when the script exits
GuiClose:
ExitApp