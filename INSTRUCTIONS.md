## Instructions to be done after install

The below configurations has to be done manaually after running the `install.sh` script.
Note: This is a self-intruction. Make sure these changes suits your taste. You might not need all of them.

### Terminal

Terminal settings has to be changed. Set Opacity to 80 and choose the theme to Zenburn.
Change the background of Terminal by modifying the background property using dconf-editor. The proeprty can be located at 'org.pantheon.terminal' package. Also uncheck the 'unsafe-paste-alert'.


### Shell

Change your shell to ZSH by running the below command,

	chsh $USER -s $(which zsh)


### Themes

GTK: Arc theme
Icons: Moka (Customized)

The `install.sh` script installs the above things. But using the elementary-tweaks we have to choose the GTK and Icons.
Before doing that run the `install.sh` script under icons folder.


### Plank

Copy the `TransparentExt` folder to 


### Dropbox

Run the script to fix the dropbox tray icon issue. Before running the script make sure dropbox is installed properly.


### Synapse
	
Run the command `synapse` from command line to open Synapse. Goto preferences and select the checkbox to run on startup.


### IntelliJ
	
Download and install IntelliJ. Run the `install.sh` script under intellij folder to fix the icon issue.


### Sublime

Install the below Sublime plugins,

* Markdown
* Todo
* Pretty print


### Maven

Maven3 will be installed by the `install.sh` script. But this will not create `mvn` commands. To fix this run the `install.sh` script which is under the maven directory.


### System

#### Indicator for system monitor

The `install.sh` script will install system indicator. Once it is done run the command `indicator-sysmonitor` and select the checkbox to run on startup. The below URL explains more about the configurations which can be done.

http://askubuntu.com/questions/100306/is-an-internet-connectivity-indicator-applet-available-for-the-unity-panel/453975#453975


#### Caffeine

Run `caffeine-plus` and make sure it is installed. After restarting the system it should be there in the system tray.


### Chrome

Run the `fix-*.sh` script under chrome directory to fix the chrome double icon issue.


### Pipelight

To enable silverlight run the below command (silverlight is needed for Netflix)

	sudo pipelight-plugin --enable silverlight


### Telegram

Install telegram by running the `install.sh` script under telegram directory. Note: The icon is not available for Telegram from Moka.


### Calendar (Maya)

Sync Calendar with Google Calendar (if using 2-step verification then you have to provide the generated password)


