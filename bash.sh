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
sudo apt-get update
sudo apt-get install atom

#SUBLIME TEXT (IDE)
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

#PDFSAM (PDF EDITOR)
sudo apt install openjdk-8-jre libopenjfx-jni libopenjfx-java openjfx
sudo echo "JAVA_HOME=\"/usr/lib/jvm/java-8-openjdk-amd64\"" >> /etc/environment
source /etc/environment
echo $JAVA_HOME
wget https://github.com/torakiki/pdfsam/releases/download/v3.1.0.RELEASE/pdfsam-3.1.0.RELEASE-1_all.deb
sudo dpkg -i pdfsam-3.1.0.RELEASE-1_all.deb

