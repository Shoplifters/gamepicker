# gamepicker

Random game chooser from options in `games.txt`. Does not allow the same game twice in a row. Now pulls from `games.txt` in the Github repo instead of from the local file for synchronization support.

## Installation

Go to [Releases](https://github.com/Shoplifters/gamepicker/releases) and download the executable.

## Build

Install make and SBCL for your system. Then simply run `make` in the `gamepicker` directory and you should be off to the races!

## Common Errors

If the executable or build process fails and complains about `libssl` or something similar, it means you need to install a version of openssl for your system and add it to your path.
