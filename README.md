#Basics
 - Run a image as container 
    
     **docker run [imagename] (busybox/redis)**

 - override startup command in the container while starting it

    **docker run busybox echo somerandomtext**

 - to see list of containers 
    
    **docker ps**

 - to see all the containers ever created
    
    **docker ps --all**

 - create a container 
 
    **docker create [imagename]**

    creating means take a file system of an image and preparing it by placed in side the container

 - start a container 
    
    **docker start containerId [containerid] (can be obtained as result of docker create cmd)**

    starting means execute the start up command (CMD section in the docker file)

 - docker run = docker create + docker start
 - Remove stopped containers
    
    **docker system prune**

 - Retrieving logs
    
    **dockers logs containerid**

 - stop running conainer

    **docker stop containerid** 
    
    stop command is issued, then container can perform operations to be done while stopping containers(like cleanup /or say some command). this takes atleast 10 seconds to stop container
        if docker container is not stopped in 10 second becaused of some tasks take too much time, it automatically fallback to docker kill command
    
    **docker kill containerid**
    
     immediately stop container and exit. this does not perform tasks which needs to be done at the time of stopping container.

- execute additional command in the container

    **docker exec -it(input to container, print output in formatted way) [containerid] [command to execute]**
- **-i** means -attach terminal input to the container
- **-t** means format output of the container
- attach terminal to the container
    
    **docker exec -it <containerID> sh|cmd|bash|zsh**

# Docker file 
    breakdown
    - Base image - like an os in the laptop
    - Download and install the dependencies - like softwares you install on top of the os to perform some operation with that
    - startup command - tell the image what to do when it starts the container.
 - build an image from docker file 
  
    **docker build .**
 - tag an image with some name instead of copying id of the image and creating a runner 
 
    **docker build -t <username(iamyuvi)>/<imagename(redis)>:<version(latest)> .(context)**


# about this project
- create custom image from some base image 
    
# run this project
    docker build . - execute docker command build with current directory(.) as context
   



# install docker in windows WSL
This note will provide detailed steps and instructions to install Docker and signup for a DockerHub account on Windows with WSL. We will need a DockerHub account so that we can pull images and push the images we will build.

Windows 10 & 11 users will be able to install Docker Desktop if their computer supports the Windows Subsystem for Linux (WSL).

Register for a DockerHub account

Visit the link below to register for a DockerHub account (this is free)

https://hub.docker.com/signup

Download and install all pending Windows OS updates

Run the WSL install script

Note - If you have previously enabled WSL and installed a distribution you may skip to step #7

Open PowerShell as Administrator and run: wsl --install
This will enable and install all required features as well as install Ubuntu.


Official documentation:

https://docs.microsoft.com/en-us/windows/wsl/install#install-wsl-command

Reboot your computer

Set a Username and Password in Ubuntu

After the reboot, Windows will auto-launch your new Ubuntu OS and prompt you to set a username and password.


Manually Installing a Distribution
If for some reason Windows did not prompt you to create a distribution or you simply would like to create a new one, you can do so by running the following command:
wsl --install -d Ubuntu

Install Docker Desktop

Navigate to the Docker Desktop installation page and click the Docker Desktop for Windows button:

https://docs.docker.com/desktop/install/windows-install/


Double-click the Docker Desktop Installer from your Downloads folder

Click "Install anyway" if warned the app isn't Microsoft-verified

Click "OK" to Add a shortcut to the Desktop


Click "Close" when you see Installation succeeded message


Double-click the Docker Desktop icon on your Desktop

Accept the Docker Service Agreement


Docker Desktop will launch for the first time

Docker Desktop will launch and present you with a tutorial. You are free to skip this.


Ensure that WSL Integration is Enabled

In Docker Desktop, click the Settings Gear icon. Then choose Resources, and finally WSL Integration. Make sure that the Enable Integration with my default WSL distro is checked. Also, if you are using multiple distributions, make sure that these additional distros are toggled on:




Open your Distro

Using the Windows Search feature in the toolbar, type the name of your distribution (by default it is Ubuntu) and click Open:


Check that Docker is working

Using the terminal for your distro, run the docker command. If all is well you should see some helpful instructions in the output similar to below:


Log in to Docker

Using the terminal for your distro, run the docker login command. You will be prompted to enter the username and password (or your Personal Access Token) you created earlier when registering for a DockerHub account. Once you see Login Succeeded, the setup is complete and you are free to continue to the next lecture.

Appendix

A significant difference when using WSL is that you will need to create and run your project files from within the Linux filesystem, not the Windows filesystem. This will be very important in later lectures when we cover volumes.

You can access your Linux system by using the Windows Search feature in the toolbar and typing the name of your distribution (by default it is Ubuntu) and clicking open (see step #16 above).  This terminal should automatically open to the home directory on the Linux filesystem

Going forward, all Docker commands should be run within WSL and not on the Windows file system