# Win installation 2023

**WARNING !!! This is a public repository: never write or save secrets here!!!**

Often we must reinstall windows from scratch to solve some unsolvable problems.  
Thanks microsoft!  
This is a good exercise. We must learn how to save settings for different programs.  

## About my notebook

IdeaPad Flex5 14ARE05  
Processor AMD Ryzen 5 4500U with Radeon Graphics 2.38 GHz  
Installed RAM 16,0 GB (15,4 GB usable)  
System type 64-bit operating system, x64-based processor  

## Windows

Edition Windows 10 Pro  
Version 22H2  
OS build 19045.3570  
Activation: Windows is activated with a digital license linked to your microsoft account

I splitted my SSD into partitions `C:` and `D:`. Every time I reinstall windows I completely format the `C:` partition, but the `D:` partition remains intact.  
I have the Dropbox folder on my `D:` partition. So it will survive the reinstall of windows. It is also better for backups to have separate system disk and data disk.  

## System backup win10

Backup, backup, backup... Do it all the time. Disks can die in an instant and you loose everything.  
It is funny that in Win10, the name of this function is "Backup and Restore (Windows 7)".  
Open the System Backup Image Tool. In Windows 10, head to Control Panel > Backup and Restore (Windows 7) > Create a System Image onto an external disk.  
A system image contains everything: data, programs, OS, config,...  

## Download ISO for Win10

<https://www.microsoft.com/sl-si/software-download/windows10>  
special Media creation tool for download  
download windows.iso to my ventoy bootable usb storage  
<https://www.ventoy.net/en/index.html>

## install win10 from scratch

Turn off the computer. Insert the Ventoy bootable usb storage.  
Turn on the computer and press F2 to enter the boot menu. Choose boot from USB.  
Don't connect to the internet because then you cannot make a local account, but only a microsoft online account.  
I don't want a microsoft account. I want to have a local account.  
The computer will restart a couple of times. Pretty fast and easy install.  
The installation creates a new folder windows.old that contains 200GB of files of the old OS.  
Remove the Ventoy bootable usb storage and restart.  

## After installation

After installation is completed login to the machine.  
Connect over wifi to the internet. In my case it assumes that I am on a metered connection goto Wifi Properties and turn metered connection off.  
The computer will work in the background to download the drivers and updates and install them. That can take a while.  
You can right click on the Start button and choose "Device manager" to see what drivers are missing.  
For my computer I will install the Lenovo software+drivers from:  
<https://pcsupport.lenovo.com/us/en/products/laptops-and-netbooks/flex-series/flex-5-14are05>  
Download Lenovo Vantage. Get from Microsoft store 430 MB.  
Launch Lenovo Vantage. I don't need it to start at boot or other automatic things.  
Then "Check updates" will find updates and I want to install them all. After 15 minutes all is installed. Restart the system.  

## Upgrade to Pro

Right click on Start button then choose System. My windows is edition Home. I want to "upgrade" to Pro. I have the product key.  
Choose "Change product key or upgrade your edition of windows" and input the product key.  

## Language and region

Left click on the Language icon on the taskbar and choose Language preferences.  
Add language - Slovenian - Install language pack, but NOT Set as Windows display language.  
Order of languages: English (United states), English(Slovenia), Slovenian.  
Click on Date, Time and regional formatting - Current format: Slovenia

## Taskbar

On the taskbar right click then "Unlock the taskbar". Right click on taskbar and disable: Search box, Task view, News and interest, Windows Ink.  
I like to have the taskbar on the right and not on the bottom, because there is way more space horizontally then vertically on a 19:6 screen. Right click on task bar icons and Hide: Meet now.  
Right click on taskbar - Taskbar settings - Turn system icons on and off - I don't need keyboard indicator, Location and microphone.  
The taskbar does not show the day of week. Unlock the taskbar and widen the taskbar just a bit to show the day of week. Then lock the taskbar.  

## Start menu

Unpin all the non-usable tiles. Eventually Pin to start menu interesting shortcuts.  

## Desktop image, icons, dark mode

Search Theme and related settings - Desktop icons settings - Disable the Recycle bin.  
In Theme and related settings - Click on Picture and browse   c\Users\Luciano\AppData\Roaming\Microsoft\Windows\Themes\wallpaper.png  
Copy icons from c\Users\luciano\Desktop to C:\Users\luciano\Desktop  
Search Turn on Dark mode system-wide and Choose your color: Dark.  
Right click on Desktop and choose Display settings - Multiple displays - Extend this display.  
Right click taskbar - Taskbar settings - Disable Show taskbar on all displays.  
Right click on desktop - View - Large icons.  

## Tweaks

Make file extension visible in Powershell as administrator and then restart win10:  

```powershell
New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideFileExt" -Value 0 -PropertyType DWORD -Force
```

In Windows Explorer View - Enable Hidden items.  
Press Win+V and enable Clipboard manager to have more than one item in clipboard.  
I want to uninstall OneDrive, because I use Dropbox. Apps & features - Microsoft One Drive - Uninstall.  
Similarly uninstall Skype, Movies, Sticky notes, Weather, XBox, Maps, Mail... all apps that I already have and are NOT from Microsoft.  

## Certificates

I have some personal certificates for use with the government and some ssh certificates for communication. The backup of my keys are in my encrypted vault.  

Copy ssh keys to windows "c:\Users\Luciano\.ssh\" folder.  
Protect the private key as instructed in the README.md file in the encrypted vault.  

Copy the certificate .p12 files somewhere locally temporarily.  
In windows type mmc into Start and choose File - Add Remove Snap-in - Certificates - Personal.  
Right click - All tasks - Import - browse the certificate .p12 file - choose high security asks a password on every use of certificate.  
Delete the temporary -p12 files.  

## Install Programs

A bunch of programs must be installed for a usable machine for development.

## TotalCmd

Download 64bit from <https://www.ghisler.com/>  
Copy the settings from "./ImportantConfigurationFiles": c\Program Files\totalcmd and C\Users\luciano\AppData\Roaming\GHISLER.  
Some secrets are in files in my encrypted vault.  
Run and Pin to taskbar and Pin to start menu  

## Notepad++

<https://notepad-plus-plus.org/downloads/>

## paint.net

<https://www.getpaint.net/>

## Chrome

<https://www.google.com/chrome/>
I have more google accounts: private, official, developer, project,...  
Login to a google account, the 2FA is on my smartphone. The chrome extensions are also stored in the account.  
I use Chrome "Profiles" to isolate different google accounts.  
First login to a specific google account. Then click the 3 dot menu at the top right of Chrome. Click Settings. Click Customize your Chrome profile. Scroll down and click the Create desktop shortcut.  
I want to have this shortcut in the Start menu and not on the desktop. Sadly, the "Pin to start" does not work, I don't know why.  
But I can move the lnk file from the desktop location `%userprofile%\desktop` to the Start Menu location for actual user (hidden and system folders):  `%AppData%\Microsoft\Windows\Start Menu\Programs`. Now the shortcut is in the Start menu and I can use Pin to Start to create a tile. That works perfectly.  
FYI: There is also the folder `%ProgramData%\Microsoft\Windows\Start Menu\Programs` that contains Start Menu shortcuts for all users.  

## Libre office

<https://www.libreoffice.org/download/download-libreoffice/>  
345 MB  
TODO: I don't like autocomplete. Disable all of that.  

## whatsapp

It is already prepared in Win10, but it still needs to download the latest version.  
Run it and it shows a QR code. On the smartphone open Whatsapp-Settings - QRCode-Scan code and then Link the device.

## Firefox

<https://www.mozilla.org/en-US/firefox/new/>
I use firefox just for programming purpose, because Rust was born at Mozilla.  

## Dropbox

I splitted my SSD into partitions `C:` and `D:`. Every time I reinstall windows I completely format the `C:` partition, but the `D:` partition remains intact.  
I have the Dropbox folder on my `D:` partition. So it will survive the reinstall of windows. It is also better for backups to have separate system disk and data disk.

I already had Dropbox on my PC and used "Selective folders". Now I want to install it again, but I don't want to make a mess with my files.  
I will rename d:\Dropbox into d:\Dropbox_old.  
Login to <https://www.dropbox.com/home>. Click on profile right top and choose "Install dropbox app" - Download dropbox app. Run DropboxInstaller.exe.  
The browser should stay open on the users dropbox page. After installation the application will use the browser to login.  
Choose folders to sync. I already splitted the folders into sync and non_sync folders. So it is easy to choose all the sync folders.  
Advanced - location D:\Dropbox. Done. Wait a little to start. And then click the taskbar icon - Profile - Quit.  
Now I can rename the D:\Dropbox_old to d:\Dropbox. Start Dropbox. It will index for 10 minutes.  
If there is a conflict Dropbox will create a new file with the name containing the word "conflict".  

## WezTerm

WezTerm is a powerful cross-platform terminal emulator and multiplexer written in Rust.  
I prefer to use it instead of Windows Console, Windows Terminal, xterm or terminator.  
I had a problem that using the Windows Clipboard Manager for "multi item clipboard" it prepends extra ^[[200~. This is called "bracketed paste" and is becoming standard in many terminal applications, because it does not run a command if it finds a character for Enter when pasting. It waits that the user reads what is pasted and then presses Enter manually or choose to abort the action. This is very important when copying commands from the internet. On the website there are many technics to hide visually a text, but still copy it to the clipboard. So there we go, no more WYSIWYG. Many administrators always paste text copied from the internet into a simple text editor like Notepad++. That will show all the important characters even the invisible ones if you need. From there you can copy a text that is visually correct without malicious hidden commands.  
<https://cirw.in/blog/bracketed-paste>  
The Clipboard Manager is sending ctrl+v under the hood. That key combination means "the next character will be taken literally". Then shift-ctrl-v pastes the "bracketed paste" that starts with ^[[200~. But unfortunately the first character is not understood as a special code, but as a normal character "literally".  
Create/edit the configuration .lua file to ignore the ctrl+v key binding.  
In the lua config file is defined that wezterm opens by default into WSL:Debian.  
On start opens 2 windows side-by-side for WSL:Debian and git-bash.

The template for `$HOME\.config\wezterm\wezterm.lua` is [here](configuration_files/win_files/c/Users/luciano/.config/wezterm/wezterm.lua).  

## VSCode

<https://code.visualstudio.com/download>  
Backup and sync setting with my github account bestia-dev.  
WARNING: Don't install `WSL extension``. It is not needed for work in WSL folders from Windows and it disables the remote ssh connection for VSCode!  
I always want to use LF and not CRLF. Press F1 - Preferences: Open user settings (JSON) and add the json template from [here](configuration_files/vscode_settings.json).  

### VSCode Markdown

One peculiarity of Markdown is that a single NewLine is completely ignored and transformed into a space.  
If you want to make a new paragraph you need to write 2 Newlines character and that is ok.  
But if you want a `<br>` soft-newline then you need to write space+space+newline. This is very peculiar.  
I like this soft-newline a lot and use it very often. But it is very easy to forget and impossible to see because space are invisible.  
I created a shortcut `ctrl+shift+ć` that opens a search and replace with the regex to correct this if I forgot it somewhere.  

Write key bindings in "C:\Users\luciano\AppData\Roaming\Code\User\keybindings.json".  
Find the code [here](configuration_files/win_files/c/Users/luciano/AppData/Roaming/Code/User/keybindings.json).

## Git for windows and git-bash

Git is the legendary version control and I use it everywhere: in Windows, Debian and inside CRUSTDE container.  
In windows install from <https://git-scm.com/download/win>  

When you install Git for Windows it comes prepacked with Git Bash, a Linux terminal emulator. Git Bash is particularly useful because it lets you run both Linux and Windows commands from the same terminal and access the underlying Windows file system. 

I will use git-bash for all my terminal needs in Windows. I despise command prompt and PowerShell. Avoid them as possible.  

Add to windows env var path ( right-click on Start - System- Advanced system settings - Environment variables - User variables - Path - Edit - New...)  
`C:\Program Files\Git`  
So the command git-bash will work globally in windows.  

## Git-bash as default terminal in VSCode

I want git-bash to be my default terminal inside VSCode for Windows.
In VSCode press F1 - Preferences: Open user settings (JSON) and copy the settings of "terminal.integrated" from [here](configuration_files/vscode_settings.json).

## SSH in Windows (Git SSH)

SSH is great. In Linux it works seamlessly. In windows it came late to the party and this bring some problems.

### Remove incompatible solutions

**WARNING:** there are many incompatible SSH solutions for windows and it can be a mess if there are more than one solution installed. I chose to use only the **SSH** that comes with [git for windows](https://git-scm.com/download/win).  

1. First I removed the "OpenSSH components in Optional Features".  
In `Manage Optional Features` uninstall OpenSSH client and Server. They are some old version anyway. Sadly, it will leave some files behind:  
Delete the folder `c:\Windows\System32\OpenSSH\`. The owner is TrustedInstaller, so first you have to change the owner to you and then give permission to administrators to Full Control. Then you can finally delete it as administrator.

2. I tried and disliked the newer OpenSSH from `winget search "openssh beta"`. Microsoft was so bold to store the private ssh keys "unprotected" into the registry. So they survive a reboot of the system. That is shockingly different from the way ssh-agent works in Linux. Bad Microsoft! Unsecure by default!  
Uninstalled it with `winget uninstall "openssh beta"`  
Check if the folder `c:\Program Files\OpenSSH` does not exist. 

3. Check if git for windows didn't change the default ssh executable.
If misconfigured, this could disallow VSCode to push to GitHub.  

```bash
git config --get core.sshCommand
```

This must return "empty".  
And check that the env variable GIT_SSH is not set in git-bash.

```bash
echo $GIT_SSH
```

This must return "empty".

4. To be sure, I searched all my `C:` disk and found only one `ssh.exe` in `C:\Program Files\Git\usr\bin\ssh.exe`. Good!

### ssh-agent in Windows

Every time I connect over SSH I must input the passcode for my SSH identity.  
Windows has also`ssh-agent` and I could use it just the same as in Linux bash to avoid retyping the passcode every time.  
I chose to use only the `ssh-agent.exe` that comes with [git for windows](https://git-scm.com/download/win).  

I want the ssh-agent to start when I manually run the git-bash console. I wrote a little script in `~/.bashrc` file for git-bash in Windows. Find the code [here](configuration_files/win_files/c/Users/luciano/.bashrc).  

Maybe it looks confusing, but git-bash treats the windows path in the Linux way. `~` is the home folder and slash `/` instead of the `\` backslash. Smart!  

Now every time I open the terminal for git-bash ("C:\Program Files\Git\git-bash.exe") it will start the agent if needed and show the command to store the ssh keys.  
The ssh-agent is a windows background process. It retains the keys in memory until we stop the process or command a `ssh-add -D`. ANd most important, it cannot survive a reboot of any kind.  

Warning: Git-bash and ssh-agent must run before VSCode. If a window of VSCode is opened before, it will not use it. Nor the newly opened windows of VSCode. Close all VSCode windows and try again.

### ssh config

It is recommended to use the `~/.ssh/config` file to assign explicitly one ssh key to one ssh server.  
If not, ssh-agent will send all the keys to the server and the server could refute the connection because of too many bad keys.  

In Windows I use SSH for:

- connect over SSH to CRUSTDE - Containerized Rust Development Environment
- push to GitHub over SSH  
- sync files with my Web server on Google Cloud

This configuration worked for me:

I have 2 separate config files for Windows and WSL, but I use only the private keys from inside WSL. So I don't have to copy them into Windows.  
In Linux `~\.ssh\config` I used the paths like `~/.ssh/key`. Find the code [here](configuration_files/debian_files/.ssh/config).  

In Windows "C:\Users\luciano\.ssh\config" I used the paths like `//wsl.localhost/Debian/home/luciano/.ssh/key`. Find the code [here](configuration_files/win_files/c/Users/luciano/.ssh/config).

In VSCode I specify the use of Git ssh-agent and config files explicitly, to avoid any confusion.  
In Settings find and set:

```conf
"remote.SSH.path": "C:\Program Files\Git\usr\bin\ssh.exe"
"remote.SSH.config": "C:\Users\luciano\.ssh\config"
```

This will allow VSCode to use the private ssh keys from the ssh-agent from git-bash. And it is reading the private key from WSL. Sweet!  

### Unsuccessful combinations

1. I tried to use SSH from WSL and it didn't work just because the path of `~/.ssh/config` in windows is different than the path in Linux. If this small difference could be overcome somehow (in the VSCode extension), it would probably work! Abandoned!

2. I tried to use the git-bash ssh with the config from WSL. It didn't work because the paths inside the config are different in windows then the paths in Linux. Not working!

3. Standard ssh-add have some options like -c and -t, but they are not recognized by the windows ssh. Instead of a reasonable error it writes only that the the agent failed. Then you have to guess why and spend a lot of time experimenting. Bad error messages!  

## VSCode and CRUSTDE Rust programming in container

Follow instructions: <https://github.com/bestia-dev/docker_rust_development>  

## Shotcut

<https://shotcut.org/>

## Other programs

IrfanView  
OBS studio  
Android studio  
Krita  
Arduino  
Calibre  
Audacity  
Inkspace  
PhotoFilmStrip  
qBittorent  
TeamViewer  
VLC  
