# gamepicker

Random game chooser. Add/remove games from `games.txt`. Does not allow the same game twice in a row. gamepicker reads `games.txt` every time it launches, so edits made while it is running will not show up in the program until it is restarted.

## Build

Install make and SBCL for your system. Then simply run `make` in the `gamepicker` directory and you should be off to the races! Note that you will need to rename the executable from `gamepicker` to `gamepicker.exe` if you are compiling on Windows.
