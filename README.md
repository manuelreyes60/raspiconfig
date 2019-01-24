## Raspberry Pi Initial Setup with piBakery

Raspberry Pi Initial Setup with piBakery. It uses a predifined recipe (Example in the assets folder) to configure the raspberry pi. In this recipe example the following steps are executed:

1. Connect to the home wifi
2. Update the raspi
3. Install git
4. Clone a public git repo
5. Execute a .sh file located in the repo in order to change passwords, set SSH and other small configurations.

## Requirements

- Raspberry Pi 3 B or B+
- piBakery Installed (Download from [HERE](https://www.pibakery.org/))
- Empty SD Card

## Procedure

1.  After the piBakery software is downloaded, it needs to be updated with the wifiConnect.py file from the assets folder. More info [HERE](https://github.com/davidferguson/pibakery/issues/132)

    Go to \PiBakery\resources\app\pibakery-blocks\wifisetup and update the wifiConnect.py file.

2. Now piBakery should be ready for normal use. Therefore, insert the empty SD card and import the recipe file located in the assets folder.

3. Write the SD Card with the Full or lite version of the OS. This can take some minutes.

4. After the SD was written successfully, insert the SD Card in the raspi and turn it on.

5. After a few minutes the raspi will appear on the list of connected devices in the home router.

6. Connect to the raspi with [Putty](https://www.putty.org/) or [SFTPNetDrive](https://www.nsoftware.com/sftp/netdrive/).