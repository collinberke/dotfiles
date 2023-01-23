# Background

The following file documents the setup of macOS. 

# Update to current macOS

Check computer uptime to see how long the machine has been running since its last reboot. Enter the following command into any terminal (`Cmd + Space` to open a system file fuzzy finder, then type 'Terminal'):

```bash
uptime
```

If a reboot hasn't been performed for some time, it is best to restart or shutdown and reboot the machine.

## Check for any macOS updates 

In the same terminal window, you can check the current OS version using `system_profiler`.

```bash
system_profiler SPSoftwareDataType
```

Check for available updates by running:

```bash
softwareupdate -l
```

Any new OS updates will be printed to the terminal.

## Download and install OS updates

To download and install any software updates, enter the following command into the terminal:

```bash
softwareupdate --i NAME

# Example 
softwareupadte -- 'macOS High Sierra 10.13.3'
```

# System settings

## Set appearance to dark

Navigate to the `System Settings` menu. Select the `Appearance` sub-menu and set Appearance to `Dark`.

## Map caps lock key to ctrl

Still in the `Systems Settings` menu, select `Keyboard` settings. Navigate to the `Keyboard Shortcuts` >> `Modifier Keys` sub-menu. Select the `Apple Internal Keyboard / Trackpad` settings. Here you'll be able to modify the caps lock key to the ctrl key.

# Clean up and config the dock

Clean up the Dock of unnecessary shortcuts. Here is a list of the programs to include within the dock. 

* Mac Finder
* RStudio 
* Google Chrome
* iTerm2 

To maximize the size of the workspace, set the dock to hide when it is not being used. Navigate to the `System Settings` >> `Desktop & Dock`. Here turn on the `Automatically hide and show the Dock` setting.

