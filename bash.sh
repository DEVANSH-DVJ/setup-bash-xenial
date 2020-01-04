#GIT
sudo apt update
sudo apt install git
git config --global user.name "devansh-dvj"
git config --global user.email "devansh.dvj@gmail.com"
echo "[alias]
  co = checkout
  ci = commit
  st = status
  br = branch
  hist = log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short" >> ~/.gitconfig

#WPS-OFFICE (WORD, EXCEL, PRESENTATION)
sudo snap install wps-office

#CHROME (BROWSER)
sudo echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/aources.list
wget https://dl.google.com/linux/linux_signing_key.pub
sudo apt-key add linux_signing_key.pub
sudo apt update
sudo apt install google-chrome-stable

#OPERA (BROWSER)
wget -qO- https://deb.opera.com/archive.key | sudo apt-key add -
sudo add-apt-repository "deb [arch=i386,amd64] https://deb.opera.com/opera-stable/ stable non-free"
sudo apt update
sudo apt install opera-stable

#ATOM (IDE)
sudo add-apt-repository ppa:webupd8team/atom
sudo apt update
sudo apt install atom
sudo apm install goto-definition

#SUBLIME TEXT (IDE) && SUBLIME MERGE
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install sublime-text
sudo apt install sublime-merge

#PDFSAM (PDF EDITOR)
sudo apt install openjdk-8-jre libopenjfx-jni libopenjfx-java openjfx
sudo echo "JAVA_HOME=\"/usr/lib/jvm/java-8-openjdk-amd64\"" >> /etc/environment
source /etc/environment
echo $JAVA_HOME
wget https://github.com/torakiki/pdfsam/releases/download/v3.1.0.RELEASE/pdfsam-3.1.0.RELEASE-1_all.deb
sudo dpkg -i pdfsam-3.1.0.RELEASE-1_all.deb

#TERMINATOR
sudo apt update
sudo apt install terminator

#NODEJS
sudo apt install curl
curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
sudo apt install nodejs
#ANGULAR-TS
npm install -g @angular/cli
#BROWSER-SYNC
npm install -g browser-sync

#VIM
sudo apt remove --assume-yes vim-tiny
sudo apt update
sudo apt install --asume-yes vim
#VIMRC
echo "set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set hlsearch
set incsearch
nnoremap sn :set number<CR>
nnoremap zn :set nonu<CR>
nnoremap sp :set paste<CR>
nnoremap zp :set nopaste<CR>
nnoremap rm :nohlsearch<CR>
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/" > ./vimrc

#FOXIT-READER
cd /tmp
wget http://cdn01.foxitsoftware.com/pub/foxit/reader/desktop/linux/2.x/2.4/en_us/FoxitReader2.4.1.0609_Server_x64_enu_Setup.run.tar.gz
tar -xvf FoxitReader*.tar.gz
sudo ./FoxitReader.enu.setup.2.4.1.0609\(r08f07f8\).x64.run

#UNITY TWEAK TOOL
sudo apt update
sudo apt install unity-tweak-tool gnome-tweak-tool

#COMPIZCONFIG SETTINGS MANAGER
sudo apt update
sudo apt install compizconfig-settings-manager

#INSTALLING ROS
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt update
sudo apt install ros-kinetic-desktop-full
sudo rosdep init
rosdep update
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt install python-rosinstall python-rosinstall-generator python-wstool build-essential

#ROS ENVIRONMENT SETUP
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws
catkin_make
source devel/source.bash

#ROBOSUB DOWNLOAD
cd src
git clone https://github.com/auv-iitb/robosub.git
echo "source ~/catkin_ws/devel/setup.bash
source ~/catkin_ws/src/robosub/auv_utils/src/utility/bash/robosub_bash
source ~/catkin_ws/src/robosub/auv_utils/src/utility/bash/robosub_aliases" >> ~/.bashrc
source ~/.bashrc

#FFTW LIBRARY
cd ~
wget "http://www.fftw.org/fftw-3.3.8.tar.gz"
tar -zxvf fftw-3.3.8.tar.gz
cd fftw-3.3.8
sudo ./configure
sudo make
sudo make install

#BFL LIBRARY
sudo apt update
sudo apt install ros-kinetic-bfl

#PUGIXML LIBRARY
sudo apt update
sudo apt install libpcap0.8 libpcap0.8-dev libpcap-dev

#PCAP LIBRARY
sudo apt update
sudo apt install libpugixml-dev libpugixml1v5 libpugixml1v5-dbgsym pugixml-doc

#INSTALLING ROBOSUB
cd ~/catkin_ws
catkin_make
