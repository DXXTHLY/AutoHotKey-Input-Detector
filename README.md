# Controller Input Detector

![GitHub](https://img.shields.io/badge/Language-AutoHotkey-blue)  
A simple AutoHotkey script to detect and display controller inputs such as button presses, joystick movements, and POV hat switches.

---

## What Does It Do?

This script creates a GUI window that monitors and displays inputs from a game controller (e.g., Xbox 360 controller). It detects:
- **Button presses** (up to 32 buttons).
- **Joystick movements** (X, Y, Z, R, U, V axes).
- **POV hat switch** (directional pad).

When a button is pressed, a joystick is moved, or the POV hat is activated, the script updates the GUI window to show which input was detected.

---

## Use Cases

- **Testing Controllers**: Quickly check if your controller buttons, joysticks, or triggers are working correctly.
- **Debugging**: Use it to debug controller inputs for game development or automation scripts.
- **Learning AutoHotkey**: A great example for beginners to learn how to interact with controllers using AutoHotkey.

---

## How to Use

1. **Install AutoHotkey**: Download and install AutoHotkey from [https://www.autohotkey.com/](https://www.autohotkey.com/).
2. **Download the Script**: Clone or download this repository.
3. **Run the Script**: Double-click the `.ahk` file to run the script.
4. **Connect Your Controller**: Make sure your controller is connected to your PC.
5. **Interact with the Controller**: Press buttons, move joysticks, or use the POV hat to see the inputs detected in the GUI window.

---

## Customization

- **Threshold for Joystick Movements**: Adjust the `threshold` variable in the script to change the sensitivity of joystick detection.
- **GUI Size and Font**: Modify the `Gui, Font` and `Gui, Show` commands to customize the appearance of the GUI window.

---

## Example Output

When you press a button or move a joystick, the GUI will display something like this:

Button Joy1 is pressed
Axis X is active (Value: 75)
POV Hat is active (Value: 9000)


---

## Social Links

- **YouTube**: [youtube.com/qwoah](https://www.youtube.com/qwoah)  
- **Discord**: [dsc.gg/143x](https://dsc.gg/143x)  

Feel free to reach out or follow me for more projects and updates!

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
