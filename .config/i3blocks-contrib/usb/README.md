# i3blocks-usb

i3blocks-usb is an i3blocks blocket script to output connected usb storage device info.
It supports usb mass storage devices, including those with multiple partitions, including LUKS partitions.

![](https://raw.githubusercontent.com/kb100/i3blocks-usb/master/images/1.png)

![](https://raw.githubusercontent.com/kb100/i3blocks-usb/master/images/2.png)

![](https://raw.githubusercontent.com/kb100/i3blocks-usb/master/images/3.png)

![](https://raw.githubusercontent.com/kb100/i3blocks-usb/master/images/4.png)


# Requirements

Dependencies: fonts-font-awesome, udev, python3, util-linux ( >= 2.23 )

Suggested: i3 ( >= 4.3 ), i3blocks ( >= 1.4 )

# Installation

To use with i3blocks, put `usb.py` somewhere convenient.
We will assume it is at `$SCRIPT_DIR/usb.py`.
Copy the blocklet configuration in the given `i3blocks.conf` into your i3blocks configuration file.
The recommended i3blocks config is

```INI
[usb]
command=$SCRIPT_DIR/usb.py
markup=pango
signal=1
interval=10
```

To update the blocklet on plug/unplug device events you can add                 

    SUBSYSTEMS=="usb", RUN+="/usr/bin/pkill -RTMIN+1 i3blocks" 

in `/etc/udev/rules.d/70-persistent-usb.rules`.
You may need to create the file.
Then call

```ShellSession
sudo udevadm control --reload-rules
```

to activate the new rules.
If you do not care about updating the blocklet on plug/unplug, the script works fine on just an interval and you can ignore the udev rule and delete `signal=1` in the config.

Now restart your i3 in place with

```ShellSession
i3-msg restart
```

Try plugging in a usb device to make sure everything works.

# Configuration

Configuration is done by editing the top portion of `usb.py`.
You will find several options that you can configure.
Probably the most useful to you will be the ignore functions which allow you to ignore devices, e.g. those that are always plugged in.
You do not need to restart i3 after making a change to the config.

# Bugs

Please report bugs and suggestions to the issues page.
Contributions are always welcome.
A common way a bug will manifest is that you will get no output in your bar.
If this happens, try running `python3 $SCRIPT_DIR/usb.py` from the command line to get some insight into why nothing is displayed.
You will probably see a python stack trace.
Make sure to include this in your bug report, along with the output of any other commands that you may think are relevant (the stack trace may contain the exact system call that failed).
