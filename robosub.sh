mkdir -p ~/catkin_ws/src;
cd ~/catkin_ws;
catkin_make;
source devel/setup.bash;

cd src;
git clone git@github.com:DEVANSH-DVJ/first_ros_task.git;
git clone git@github.com:DEVANSH-DVJ/ros_beginner_tutorials.git;
git clone git@github.com:auv-iitb/robosub.git;
cd robosub;
git checkout matsya_5_branch;
echo "source ~/catkin_ws/devel/setup.bash;
source ~/catkin_ws/src/robosub/auv_utils/src/utility/bash/robosub_bash;
source ~/catkin_ws/src/robosub/auv_utils/src/utility/bash/robosub_aliases;
alias wrapper.py='python ~/catkin_ws/src/robosub/auv_utils/src/utility/wrapper/wrapper.py';
alias cm6='cm -j6';
" >> ~/.bashrc;
source ~/.bashrc;

sudo apt -y install libfftw3-dev;
sudo apt -y install ros-kinetic-bfl;
sudo apt -y install libpcap-dev;
sudo apt -y install libpugixml-dev;
sudo apt -y install ros-kinetic-gazebo-ros-pkgs ros-kinetic-gazebo-ros-control;

cd ~/catkin_ws;
catkin_make;
