[//]: # (auto_md_to_doc_comments segment start A)

# development_environment

[//]: # (auto_cargo_toml_to_md start)

**Description of my Windows and Linux development environment for Rust**  
***version: 2022.421.1347 date: 2022-05-12 author: [bestia.dev](https://bestia.dev) repository: [GitHub](https://github.com/CRUSTDE-Containerized-Rust-Dev-Env/development_environment)***  

 ![tutorial](https://img.shields.io/badge/tutorial-yellow)
 ![development_environment](https://bestia.dev/webpage_hit_counter/get_svg_image/641758399.svg)

[//]: # (auto_cargo_toml_to_md end)

**WARNING !!! This is a public repository: never write or save secrets here!!!**

 ![logo](https://raw.githubusercontent.com/CRUSTDE-Containerized-Rust-Dev-Env/CRUSTDE-Containerized-Rust-Dev-Env/main/images/crustde_250x250.png)
 development_environment is a member of the [CRUSTDE-Containerized-Rust-Dev-Env](https://github.com/orgs/CRUSTDE-Containerized-Rust-Dev-Env/repositories?q=sort%3Aname-asc) project.

Hashtags: #rustlang #tutorial #buildtool #developmenttool  
My projects on GitHub are more like a tutorial than a finished product: [bestia-dev tutorials](https://github.com/bestia-dev/tutorials_rust_wasm).

## Win installation 2023

Often we must reinstall Windows from scratch to solve some unsolvable problems.  
Thanks, Microsoft!  
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
Activation: Windows is activated with a digital license linked to your Microsoft account

I split my SSD into partitions `C:` and `D:`. Every time I reinstall Windows I completely format the `C:` partition, but the `D:` partition remains intact.  
I have the Dropbox folder on my `D:` partition. So it will survive the reinstallation of Windows. It is also better for backups to have separate system and data disks.  

## System backup win10

Backup, backup, backup... Do it all the time. Disks can die in an instant and you lose everything.  
It is funny that in Win10, the name of this function is "Backup and Restore (Windows 7)".  
Open the System Backup Image Tool. In Windows 10, head to Control Panel > Backup and Restore (Windows 7) > Create a System Image onto an external disk.  
A system image contains everything: data, programs, OS, config,... from the `C:` drive.  

The `D:` drive contains only data and is much easier to backup/copy. I just copy all the files to an external drive. And I have Dropbox installed to sync this drive to the cloud.  

## Download ISO for Win10

<https://www.microsoft.com/sl-si/software-download/windows10>  
special Media creation tool for download  
download windows.iso to my Ventoy bootable USB storage  
<https://www.ventoy.net/en/index.html>

## Install Win10 from scratch

Turn off the computer. Insert the Ventoy bootable USB storage.  
Turn on the computer and press F2 to enter the boot menu. Choose boot from USB.  
Don't connect to the internet because then you cannot make a local account, but only a Microsoft online account.  
I don't want a Microsoft account. I want to have a local account.  
The computer will restart a couple of times. Pretty fast and easy to install.  
The installation creates a new folder `windows.old` that contains 200GB of files of the old OS.  
Detach the Ventoy bootable USB storage and restart.  

## After installation

After installation is completed login to the machine.  
Connect over wifi to the internet. In my case, it assumes that I am on a metered connection. Go to Wifi Properties and turn the metered connection off.  
The computer will work in the background to download the drivers and updates and install them. That can take a while.  
You can right-click on the Start button and choose "Device Manager" to see what drivers are missing.  
For my computer, I will install the Lenovo software and drivers from:  
<https://pcsupport.lenovo.com/us/en/products/laptops-and-netbooks/flex-series/flex-5-14are05>  
Download Lenovo Vantage. Get from Microsoft store 430 MB.  
Launch Lenovo Vantage. I don't need it to start at boot or other automatic things.  
Then "Check updates" will find updates and I want to install them all. After 15 minutes all is installed. Restart the system.  

## Upgrade to Pro

Right-click on the Start button then choose System. My Windows is edition Home. I want to "upgrade" to Pro. I have the product key.  
Choose "Change product key or upgrade your edition of Windows" and input the product key.  

## Language and region

Left-click on the Language icon on the taskbar and choose Language Preferences.  
Add language - Slovenian - Install language pack, but NOT Set as Windows display language.  
Order of languages: English (United States), English(Slovenia), Slovenian.  
Click on Date, Time and regional formatting - Current format: Slovenia

## Taskbar

On the taskbar right click then "Unlock the taskbar". Right-click on Taskbar and disable: Search box, Task view, News and interest, Windows Ink,...  
I like to have the taskbar on the right and not on the bottom because there is way more space horizontally than vertically on a 19:6 screen. Right-click on Taskbar icons and Hide: Meet now.  
Right-click on Taskbar - Taskbar settings - Turn system icons on and off - I don't need keyboard indicator, Location and microphone.  
The taskbar does not show the day of the week. Unlock the taskbar and widen the taskbar just a bit to show the day of the week. Then lock the taskbar.  

## Start menu

Unpin all the non-usable tiles. Eventually, Pin to start menu interesting shortcuts.  

## Desktop image, icons, dark mode

Search Theme and related settings - Desktop icons settings - Disable the Recycle bin.  
In Theme and related settings - Click on Picture and browse   c\Users\Luciano\AppData\Roaming\Microsoft\Windows\Themes\wallpaper.png  
Copy icons from c\Users\luciano\Desktop to C:\Users\luciano\Desktop  
Search Turn on Dark mode system-wide and Choose your color: Dark.  
Right-click on Desktop and choose Display settings - Multiple displays - Extend this display.  
Right-click taskbar - Taskbar settings - Disable Show taskbar on all displays.  
Right-click on Desktop - View - Large icons.  

## Tweaks

Make file extension visible in Powershell as administrator and then restart win10:  

```powershell
New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideFileExt" -Value 0 -PropertyType DWORD -Force
```

In Windows Explorer View - Enable Hidden items.  
Press Win+V and enable the Clipboard manager to have more than one item in the clipboard.  
I want to uninstall OneDrive because I use Dropbox. Apps & features - Microsoft One Drive - Uninstall.  
Similarly uninstall Skype, Movies, Sticky Notes, Weather, XBox, Maps, Mail... all apps that I already have and are NOT from Microsoft.  

## Certificates

I have some personal certificates for use with the government. The backup of my keys is in my encrypted vault.  

From the encrypted vault, copy the certificates .p12 files somewhere locally temporarily.  
In Windows type mmc into Start and choose File - Add Remove Snap-in - Certificates - Personal.  
Right-click - All tasks - Import - browse the certificate .p12 file - choose high security ask for the password on every use of the certificate. Don't make the private key exportable.  
Git for Windows comes with `C:\Program Files\Git\usr\bin\shred.exe`. Use it to shred/delete the temporary .p12 files.

## Install Programs on Windows

A bunch of programs must be installed for a usable machine for development.

## TotalCmd

To Install and configure TotalCmd follow the instructions: <https://github.com/CRUSTDE-Containerized-Rust-Dev-Env/total_commander_best_file_manager>  

## Firefox

<https://www.mozilla.org/en-US/firefox/new/>
I use Firefox just for programming purposes because Rust was born at Mozilla.  

## Chrome

<https://www.google.com/chrome/>
I have more Google accounts: private, official, developer, project,...  
Log in to a Google account, the 2FA is on my smartphone. The Chrome extensions are also stored in the account.  
I use Chrome "Profiles" to isolate different Google accounts.  
First login to a specific Google account. Then click the 3 dot menu at the top right of Chrome. Click Settings. Click Customize your Chrome profile. Scroll down and click the Create Desktop shortcut.  
I want to have this shortcut in the Start menu and not on the desktop. Sadly, the "Pin to start" does not work, I don't know why.  
But I can move the `lnk` file from the desktop location `%userprofile%\desktop` to the Start Menu location for the actual user (hidden and system folders):  `%AppData%\Microsoft\Windows\Start Menu\Programs`. Now the shortcut is in the Start menu and I can use Pin to Start to create a tile. That works perfectly.  
FYI: There is also the folder `%ProgramData%\Microsoft\Windows\Start Menu\Programs` that contains Start Menu shortcuts for all users.  

## Libre office

<https://www.libreoffice.org/download/download-libreoffice/>  
345 MB  
I don't like autocomplete. Disable all of that.  

## Whatsapp

It is already prepared in Win10, but it still needs to download the latest version.  
Run it and it shows a QR code. On the smartphone open Whatsapp-Settings - QRCode-Scan code and then Link the device.

## Dropbox

I split my SSD into partitions `C:` and `D:`. Every time I reinstall Windows I completely format the `C:` partition, but the `D:` partition remains intact.  
I have the Dropbox folder on my `D:` partition. So it will survive the reinstallation of Windows. It is also better for backups to have separate system and data disks.

I already had Dropbox on my PC before the reinstall and used "Selective folders". Now I want to install it again, but I don't want to make a mess with my files.  
I will rename d:\Dropbox into d:\Dropbox_old.  
Login to <https://www.dropbox.com/home>. Click on the profile right top and choose "Install Dropbox app" - Download Dropbox app. Run DropboxInstaller.exe.  
The browser should stay open on the user's Dropbox page. After installation, the application will use the browser to log in.  
Choose folders to sync. I already split the folders into sync and non_sync folders. So it is easy to choose all the sync folders.  
Advanced - location D:\Dropbox. Done. Wait a little to start. And then click the taskbar icon - Profile - Quit.  
Now I can rename the D:\Dropbox_old to d:\Dropbox. Start Dropbox. It will index for 10 minutes.  
If there is a conflict Dropbox will create a new file with the name containing the word "conflict".  

## WezTerm

WezTerm is a powerful cross-platform terminal emulator and multiplexer written in Rust.  
I prefer to use it instead of Windows Console, Windows Terminal, Xterm or Terminator.  

I had a problem that using the Windows Clipboard Manager for "multi-item clipboard" it prepends extra ^[[200~. This is called "bracketed paste" and is becoming standard in many terminal applications because it does not run a command if it finds a character for Enter when pasting. It waits for the user to read what is pasted and then presses Enter manually or choose to abort the action. This is very important when copying commands from the internet. On the website, there are many technics to hide visually a text but still copy it to the clipboard. So there we go, no more WYSIWYG. Many administrators always paste text copied from the internet into a simple text editor like Notepad++. That will show all the important characters even the invisible ones if you need. From there you can copy a text that is visually correct without malicious hidden commands.  
<https://cirw.in/blog/bracketed-paste>  
The Clipboard Manager is sending ctrl+v under the hood. That key combination means "the next character will be taken literally". Then shift-ctrl-v pastes the "bracketed paste" that starts with ^[[200~. But unfortunately, the first character is not understood as a special code, but as a normal character "literally".  

Create/edit the configuration `wezterm.lua` file to ignore the ctrl+v key binding.  
The template for `$HOME\.config\wezterm\wezterm.lua` is [here](configuration_files/win_files/c/Users/luciano/.config/wezterm/wezterm.lua).  

After `git-bash` and `WSL:Debian` are installed create 2 icons on the Desktop to use Wezterm as their terminal.  
Download the Debian ico in `git-bash`:

```bash
curl https://raw.githubusercontent.com/CRUSTDE-Containerized-Rust-Dev-Env/win10_wsl2_debian11/main/images/Debian-logo.ico -o ~/.config/wezterm/Debian-logo.ico
```

Icon name: `git-bash`

- Target: "C:\Program Files\WezTerm\wezterm-gui.exe" start -- "C:\\Program Files\\Git\\bin\\bash.exe" -l
- Windows: Maximized
- Icon: `%ProgramFiles%\Git\git-bash.exe`

Icon name: `WSL:Debian`

- Target: "C:\Program Files\WezTerm\wezterm-gui.exe" start --domain WSL:Debian
- Windows: Maximized
- Icon: `%UserProfile%\.config\wezterm\Debian-logo.ico`

The icons on the Desktop should look like this:

![Icons on Desktop](https://raw.githubusercontent.com/CRUSTDE-Containerized-Rust-Dev-Env/development_environment/main/images/Wezterm_git_bash_wsl_debian.png)

You can now `Pin to start` or `Pin to taskbar` as you wish.

## CRUSTDE in detail

The installation of the main programs used for CRUSTDE are described in more detail here:
<https://github.com/CRUSTDE-Containerized-Rust-Dev-Env/win_git_git-bash_ssh_VSCode>
<https://github.com/CRUSTDE-Containerized-Rust-Dev-Env/win10_wsl2_debian11>

## Other programs

- paint.net <https://www.getpaint.net/>
- Notepad++ <https://notepad-plus-plus.org/downloads/>
- Shotcut <https://shotcut.org/>
- IrfanView  
- OBS studio  
- Android Studio  
- Krita  
- Arduino  
- Calibre  
- Audacity  
- Inkspace  
- PhotoFilmStrip  
- qBittorent  
- TeamViewer  
- VLC  

## websites

My websites are on a Google Linux virtual machine.  
On my local disk, I always prepare the files and folder structure for the websites. Then I synchronize this folder with the directory on the VM.  
It already happened that I deleted my VM on Google and had to set up a new one from scratch. I wanted a clean start. So having an identical copy on my local disk is paramount.  
The local folder is synced with Dropbox for backup.  

## confusion with names

Sadly, it is not possible to use consistently the same "name" everywhere, because there are always some limitations on what characters are allowed.  
Alphanumerics are allowed everywhere, but dot, hyphen, underscore are not.  
Also, uppercase and lowercase can be limited.

Variants of my name:

bestia.dev - domain name and primary, preferred name  
info at bestia.dev - email address is forwarded to info.bestia.dev at gmail.com  
bestiadev  - docker  
bestia-dev - GitHub (bestiadev is NOT available 2024-03, dot and underscore are not allowed)  
info.bestia.dev at gmail.com  (bestia.dev is NOT available 2024-03, but it is not in use?!?)  

## Open-source and free as a beer

My open-source projects are free as a beer (MIT license).  
I just love programming.  
But I need also to drink. If you find my projects and tutorials helpful, please buy me a beer by donating to my [PayPal](https://paypal.me/LucianoBestia).  
You know the price of a beer in your local bar ;-)  
So I can drink a free beer for your health :-)  
[Na zdravje!](https://translate.google.com/?hl=en&sl=sl&tl=en&text=Na%20zdravje&op=translate) [Alla salute!](https://dictionary.cambridge.org/dictionary/italian-english/alla-salute) [Prost!](https://dictionary.cambridge.org/dictionary/german-english/prost) [Nazdravlje!](https://matadornetwork.com/nights/how-to-say-cheers-in-50-languages/) 🍻

[//bestia.dev](https://bestia.dev)  
[//github.com/bestia-dev](https://github.com/bestia-dev)  
[//bestiadev.substack.com](https://bestiadev.substack.com)  
[//youtube.com/@bestia-dev-tutorials](https://youtube.com/@bestia-dev-tutorials)  

[//]: # (auto_md_to_doc_comments segment end A)
