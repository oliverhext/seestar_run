## seestar_run.md

**Version:** 1.0.0b2

**Tested Firmware:** 2.71

**Overview:**

This document details `seestar_run`, a companion application for the Seestar mobile app, written on python to be used in most modern OS. It showcases programmatic control of the Seestar S50, enabling tasks like:

* Mosaic captures
* Night session planning
* Custom target capture
* Spectral image capture over extended frames

**Amendment from original code

* added an autofocus function
* added a shutdown function
* changed debug flag to true/false

**Requirements:**

* Seestar with completed calibration steps (horizontal, dark frame, leveling)
* computer/laptop with Python installed (e.g. [https://www.python.org/downloads/windows/](https://www.python.org/downloads/windows/))

**Usage:**

1. **Setup:** Ensure Seestar calibration is complete.
2. **Install Python:** Follow the link above if not already installed.
3. **Run Commands:** Use PowerShell for Windows or python in other OS and run the following command:

```
python seestar_run.py <ip_address> <target_name> <ra> <dec> <is_use_LP_filter> <session_time> <RA panel size> <Dec panel size> <RA offset factor> <Dec offset factor> <debug> <shutdown>
```

**Parameters:**

* **ip_address:** Seestar's IP address (found in "Advanced Feature -> RTSP Address").
* **target_name:** Target name. During mosaics, saved format is `<target_name>_<RA_panel_num>_<Dec_panel_num>`.
* **ra:** Target's RA value (JNow). Can be a float or a string format of "hr:mm:ss.s". If negative, uses current Sky Atlas location.
* **dec:** Target's Dec value (JNow). Can be a float or a string format of "\<sign\>deg:mm:ss.s". \<sign\> is optional
* **is_use_LP_filter:** Set to 1 for light pollution filter usage.
* **session_time:** Capture session duration per panel in seconds (not integration time).
* **RA and Dec panel size:** Number of panels in a mosaic.
* **RA and Dec offset factors:** Distance between mosaic panels, lower values will have more overlaps
* **Debug:** Either 1 or 0 
* **Shutdown: ** Either 1 or 0




**Usage:**

* Amend the schedule.bat file as required with your targets

**Feedback:**

Please report bugs and share feedback on the this github repo or in the Discord channel:

[https://discord.com/channels/1204838310841815040/1207422275960176650](https://discord.com/channels/1204838310841815040/1207422275960176650)

**Enjoy and good luck!**
