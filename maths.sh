cd ~/Desktop/IITB/MA\ 106/Lectures/bash

if [ $# -eq 0 ]
then
    x="1"
else 
    x="$1"
fi

if [ $x -lt "2" ]
then
    bash Lecture-1\&2\&3\&4.sh &
fi
if [ $x -lt "3" ]
then
    bash Lecture-5\&6.sh &
fi
if [ $x -lt "4" ]
then
    bash Lecture-6\&7\&8.sh &
fi
if [ $x -lt "5" ]
then
    bash Lecture-8\&9\&10.sh &
fi
if [ $x -lt "6" ]
then
    bash Lecture-10\&11\&12.sh &
fi
if [ $x -lt "7" ]
then
    bash Lecture-12\&13\&14.sh &
fi

