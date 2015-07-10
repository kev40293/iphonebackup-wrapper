#!/bin/bash

function backup_phone {
   idevicebackup2 backup $1
}

#zenity --warning "hello"
DIRECTORY=`zenity --file-selection --directory`
case $? in
   0)
      backup_phone $DIRECTORY
      ;;
   1)
      echo "Operation canceled"
      ;;
   *)
      zenity --warning "No file selected"
      ;;
esac
