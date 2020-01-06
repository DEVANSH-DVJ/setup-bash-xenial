sudo apt upgrade;

#GIT
sudo apt update;
sudo apt -y install git;
git config --global user.name "devansh-dvj";
git config --global user.email "devansh.dvj@gmail.com";
echo "[alias]
  co = checkout
  ci = commit
  st = status
  br = branch
  hist = log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short" >> ~/.gitconfig;

#UNITY TWEAK TOOL
sudo apt update;
sudo apt -y install unity-tweak-tool gnome-tweak-tool;

#COMPIZCONFIG SETTINGS MANAGER
##sudo apt update;
sudo apt -y install compizconfig-settings-manager;

#VIM
sudo apt -y remove vim-tiny;
##sudo apt update;
sudo apt -y install vim;
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
match ExtraWhitespace /\s\+$/" > ~/.vimrc;

#TERMINATOR
##sudo apt update;
sudo apt -y install terminator;

#CHROME (BROWSER)
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O google-chrome-stable_current_amd64.deb;
sudo dpkg -i google-chrome-stable_current_amd64.deb;

#OPERA (BROWSER)
wget -qO- https://deb.opera.com/archive.key | sudo apt-key add -;
sudo add-apt-repository "deb [arch=i386,amd64] https://deb.opera.com/opera-stable/ stable non-free";
sudo apt update;
sudo apt -y install opera-stable;

#NODEJS
sudo apt -y install curl;
curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -;
sudo apt -y install nodejs;
#ANGULAR-TS
sudo npm install -g @angular/cli;
#BROWSER-SYNC
sudo npm install -g browser-sync;

#INSTALLING ROS
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list';
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654;
sudo apt update;
sudo apt -y install ros-kinetic-desktop-full;
sudo rosdep init;
rosdep update;
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc;
source ~/.bashrc;
sudo apt -y install python-rosinstall python-rosinstall-generator python-wstool build-essential;
#ROS ENVIRONMENT SETUP
mkdir -p ~/catkin_ws/src;
cd ~/catkin_ws;
catkin_make;
source devel/setup.bash;
#ROBOSUB DOWNLOAD
cd src;
git clone https://github.com/auv-iitb/robosub.git;
echo "source ~/catkin_ws/devel/setup.bash
source ~/catkin_ws/src/robosub/auv_utils/src/utility/bash/robosub_bash
source ~/catkin_ws/src/robosub/auv_utils/src/utility/bash/robosub_aliases" >> ~/.bashrc;
source ~/.bashrc;
#FFTW LIBRARY
##cd ~;
##wget "http://www.fftw.org/fftw-3.3.8.tar.gz";
##tar -zxvf fftw-3.3.8.tar.gz;
##cd fftw-3.3.8;
##sudo ./configure;
##sudo make;
##sudo make install;
##sudo apt update;
sudo apt -y install libfftw3-dev;
#BFL LIBRARY
##sudo apt update;
sudo apt -y install ros-kinetic-bfl;
#PUGIXML LIBRARY
##sudo apt update;
sudo apt -y install libpcap0.8 libpcap0.8-dev libpcap-dev;
#PCAP LIBRARY
##sudo apt update;
sudo apt -y install libpugixml-dev libpugixml1v5 pugixml-doc;
#OTHER LIBRARIES
##sudo apt update;
sudo apt -y install ros-kinetic-gazebo-ros-pkgs ros-kinetic-gazebo-ros-control;
sudo apt -y install tree;
sudo apt -y install python-argcomplete;
sudo apt -y install pylint;
#INSTALLING ROBOSUB
cd ~/catkin_ws;
catkin_make;

#VIMBA DRIVER(//TODO after switching to Vimba3.1)

#ATOM (IDE)
sudo apt update;
cd ~;
wget https://atom.io/download/deb -O atom.deb;
sudo dpkg -i atom.deb;
apm install goto-definition;

#SUBLIME TEXT (IDE) && SUBLIME MERGE
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -;
sudo apt -y install apt-transport-https;
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list;
sudo apt update;
sudo apt -y install sublime-text;
sudo apt -y install sublime-merge;

#FOXIT-READER
##cd /tmp;
##wget http://cdn01.foxitsoftware.com/pub/foxit/reader/desktop/linux/2.x/2.4/en_us/FoxitReader2.4.1.0609_Server_x64_enu_Setup.run.tar.gz;
##tar -xvf FoxitReader*.tar.gz;
##sudo ./FoxitReader.enu.setup.2.4.1.0609\(r08f07f8\).x64.run;
wget http://cdn01.foxitsoftware.com/pub/foxit/reader/desktop/linux/2.x/2.1/en_us/FoxitReader2.1.0805_Server_x64_enu_Setup.run.tar.gz;
tar xzvf FoxitReader*.tar.gz;
sudo chmod a+x FoxitReader*.run;
sudo ./FoxitReader.*.run;

#WPS-OFFICE (WORD, EXCEL, PRESENTATION)
sudo snap install wps-office;

#PDFSAM (PDF EDITOR)
sudo apt install openjdk-8-jre libopenjfx-jni libopenjfx-java openjfx;
sudo echo "JAVA_HOME=\"/usr/lib/jvm/java-8-openjdk-amd64\"" >> /etc/environment;
source /etc/environment;
echo $JAVA_HOME;
wget https://github.com/torakiki/pdfsam/releases/download/v3.1.0.RELEASE/pdfsam-3.1.0.RELEASE-1_all.deb -O pdfsam-3.1.0.RELEASE-1_all.deb;
sudo dpkg -i pdfsam-3.1.0.RELEASE-1_all.deb;

