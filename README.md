# development_environment

**Description of my development environment for Rust**  
***version: 1.0  date: 2022-03-28 author: [dev_Bestia](https://bestia.dev) repository: [GitHub](https://github.com/LucianoBestia/development_environment)***  

## Rust

This days I mostly program with Rust on Linux.  
My primary desktop is Win10. Inside it I have WSL2, which is a Linux Virtual Machine. There I installed Debian 11 Bullseye.  
I made a detailed description in <https://github.com/LucianoBestia/win10_wsl2_debian11>.

For Rust development for Linux I have the container `rust_dev_cnt` created from the image `rust_dev_vscode_img` that I described here <https://github.com/LucianoBestia/docker_rust_development>.  
This container is ephemeral and can be destroyed any time. The important files inside it must be pushed to Github, else they will be destroyed with the container.  

![container_rust_dev_cnt_github_v3.plantuml](https://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/LucianoBestia/development_environment/main/images/container_rust_dev_cnt_github_v3.plantuml)

## Github

Github is great, but...  
They can cancel all my files in a second without warning. It happened to Iranian programmers when the USA imposed sanctions. It can happen to anybody antime for any reason. Github is owned by Microsoft, the service is free and they don't have any obligation to the programmer whatsoever. If the service is free, you are not the customer with customer rights, you are the product with no rights.  
I want to be sure that Github is not the only place where my code is stored. I will prepare a folder on my computer to have backups of the Github projects. I will call the folder `BestiaDev`.  
Today I manually cloned all my Github projects. Later I can `git pull` them and have it as a backup on my notebook disk. TODO: prepare a utility that automates this process.  

![folder_bestiadev_github_v4.plantuml](https://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/LucianoBestia/development_environment/main/images/folder_bestiadev_github_v4.plantuml)
