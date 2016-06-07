####This repo contains the scripts I use to automate useful tasks on my OSMC install.
***

**cron-content** - Contains the crontab entries used to run these scripts. Run the command below to add the contents of cron-content.txt starting on a new line at the end of the default crontab.

`crontab -e`

**livetv**	- sh script used to update the XMLTV file used by the Kodi TVGuide/FTVGuide addon. It then cp/scp's them to their desired location. 

`sudo cp livetv /usr/local/bin/`

`sudo chmod +x /usr/local/bin/livetv`


		
**scripts/**					- This directory should be placed within the OSMC users home directory. Scripts in this directory should be made executable with the command below:

`sudo chmod +x *.sh`

**scripts/tc.sh**				- used to update Kodi's texture cache -- [[RELEASE] Texture Cache Maintenance utility](http://forum.kodi.tv/showthread.php?tid=158373 "Milhouse's Texturecache Kodi.tv forum release topic") / [MilhouseVH/texturecache.py
](https://github.com/MilhouseVH/texturecache.py "Milhouse's Texturecache Github Repository")


**scripts/kodi-update.sh**		- script used to update Kodi's library. Can also be used to manually update/clean both Video/Music libraries. This script only needs ran on one of your Kodi clients in a shared MySQL environment. The QUIT parameter can be handy in situations where the Kodi client GUI isn't responding.

**Parameters:**

* UL    -   update library
* CL	-   clean library
* UAL	-   update audio library
* CAL	-   clean audio libary
* Q or QUIT -   Quit KODI



**scripts/ftvguide-update.sh**    - script to update make the Kodi [TVGuide](https://github.com/twinther/script.tvguide "Twinther's original TVGuide also available in Kodi's offical repo")/[FTVGuide](https://github.com/bluezed/FTV-Guide-Repo " bluezed's fork of Twinther's original addon") addon import the XMLTV file. Also has command to return the screen to the Homescreen. The JSON-RPC should either use `script.tvguide` or `script.ftvguide` depending on which is used.

**Parameters:**

* FTVGUIDE	-   Run the FTV Guide addon so it updates the XMLTV data in memory from the file
* CL		-   Return to the Kodi home screen

##ATTENTION
###All ip's/paths in these scripts should be adjusted before running them.