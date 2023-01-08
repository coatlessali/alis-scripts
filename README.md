# Ali's tricks and scripts and other fun stuff repository!

Contributions welcome.

### dmc_flip.sh

This script flips the video files for Devil May Cry HD Collection using ffmpeg, so that they display correctly in Proton.

DMC1/2/3 are available, but **only DMC2/3 should be used, as DMC1 seems to have issues when the video files are messed with this way.**

The DMC Launcher's files don't work at the moment because I'm too lazy to fix a case sensitivity issue. I don't normally write bash scripts, and just look up how to do basic string concatenation and matching whenever I need to make something. I am not a programmer.

#### Usage:

Place the script into your Devil May Cry HD Collection folder and make sure it is executable. Open the folder in a terminal and type `./dmc_flip.sh [arg]`, with `[arg]` being the game you want to flip the files of. Valid selections include `dmc1`, `dmc2`, and `dmc3`. It **will** take forever to run.
