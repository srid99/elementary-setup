## Instructions to be done after install

The below configurations has to be done manaually after running the `install.sh` script.

Note: This is a self-instruction manual. Make sure these changes suits your taste. You may not require all of them.


### Public key not available

If you get this error run the below command with the missing public key

	sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys <PUBLIC_KEY>


### Terminal

[Change the theme of the terminal](https://github.com/Mayccoll/Gogh/blob/master/content/install.md#create-a-command-line) (My preference is 'Material')

From System Settings -> Tweaks -> Terminals ; Disable unsafe paste alerts


### Shell

Change your shell to ZSH by running the below command,

	chsh $USER -s $(which zsh)


### Icons

Copy the folder `Paper-Ext` from icons folder to `/usr/share/icons`


### Plank

Copy the folders `Orchis-Glass-Ext` and `TransparentExt` from plank folder to `/usr/share/plank/themes/` directory

Copy the desktop icons from `applications` to `/usr/share/applications` then add them to plank.


### Tweaks

Using the Tweaks which can be found in Settings plug we can configure few things. Select GTK+ as `Arc` and the icons as `Paper-Ext`.

To configure plank run the command `plank --preferences` in Terminal. In plank preferences window choose either  `Orchis-Glass-Ext` or `TransparentExt` as Theme.

In the plank settings (you can do this from Desktop plug in System Settings), set the icon size to 32 and choose `Don't hide` option for hide mode option.

Choose your favourite wallpaper (I prefer a dark one since it goes well with our Terminal opacity).

Note: More on [why plank themes are not part of settings](https://elementaryos.stackexchange.com/questions/474/why-are-planks-preferences-hidden-away)


### Dropbox

Checkout the below repo and run the install script. This installs and fixes the wingpanel icon issue with dropbox.

	https://github.com/zant95/elementary-dropbox.git


### Synapse

Run the command `synapse` from command line to open Synapse. Goto preferences and select the checkbox to run on startup.
Add below configuration to the `$HOME/.config/synapse/config.json` file to get the shortcut working.

```
{
  "ui" : {
   "shortcuts" : {
        "activate" : "<Super><Alt>space"
    },
    "global" : {
      "ui-type" : "default"
    }
  }
}
```


### Sublime

First install the package manager and then install the below plugins,

* Markdown editing
* Markdown preview
* Todo
* Pretty print
* Material theme


### Maven

Download the latest version of maven from https://maven.apache.org/download.cgi and untar it to `/usr/share/maven`. Make sure `mvn` command is available in path (using symlink).

```
sudo ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
```

If needed add `export M2_HOME=/usr/share/maven` in your `.bash_profile` or `.zshrc`.


### System

#### Indicator for system monitor

The `install.sh` script will install system indicator. Once it is done run the command `indicator-sysmonitor` and select the checkbox to run on startup. The below URL explains more about the configurations which can be done.

http://askubuntu.com/questions/100306/is-an-internet-connectivity-indicator-applet-available-for-the-unity-panel/453975#453975


### Caffeine

Add caffeine indicator to system startup. You can do this by, System Settings -> Applications -> Startup -> Click `+` icon to add `Caffeine`. After restart it should be there in the system tray.


### Calendar (Maya)

Sync Calendar with Google Calendar (if using 2-step verification then you have to provide the generated password)


### Icons on Plank

* Chrome
* Firefox
* IntelliJ
* Sublime Text
* Terminal
* Google Note
* Calendar
* Pocket
* KeePassX
* Gimp
* Transmission
* Telegram
* Slack
* Skype
* Screenshot
* VLC
* Music
* Photos
* Files
* dConf Editor
* Software Updater
* System Settings


### Oh-My-Zsh

Configure the needed Oh-My-Zsh plugins like (z mvn docker docker-compose go git) and so on. The theme I prefer is "intheloop".


### NPM

Follow the steps provided in below guide to install npm packages in global without `sudo` permission

https://github.com/sindresorhus/guides/blob/master/npm-global-without-sudo.md


### Docker

To run `docker` commands without `sudo` command add current user to the docker usergroup.

```
sudo usermod -aG docker $(whoami)
```

More about this: https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-16-04

Along with this also install docker-clean

https://github.com/ZZROTDesign/docker-clean


### Docker compose

Follow the instructions from Docker official page,

https://docs.docker.com/compose/install/#alternative-install-options
