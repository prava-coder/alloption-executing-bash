#!/bin/bash 
#program:to write a proram to copy,delete,rename,display,edit a file

ch=1
while [ $ch -le 9 ]
do
 echo "1.display current directory"
 echo "2.list the directory"
 echo "3.make a directory"
 echo "4.copy a file"
 echo "5.rename a file"
 echo "6.delete the file"
 echo "7.edit the file"
 echo "8.open or display file"
 echo "9.exit"


echo "enter your choice"
read ch
case $ch in
 1)
  echo "displays the current directory"
  pwd;;
 2)
  echo "list the directory"
  ls;;
 3)
  echo "make a directory"
  read f1
  mkdir $f1
  echo "new $f1 directory is created";;
 4)
  echo "enter the file name for copying"
  read f1
  echo "enter the file to be copied"
  read f2
  cp $f1 $f2;;
 5)
  echo "to rename a file:"
  echo "enter old file name"
  read f1
  echo "enter new file name"
  read f2
  mv $f1 $f2
  echo "file name  $f1 changed to $f2";;
 6)
  echo "to delete the file:"
  read f1
  rm $f1
  echo "$f1 is deleted";;
 7)
  echo "to edit the file"
  read f1
  cat >>$f1
 echo "$f1 is edited";;
 8)
  echo "open or display the file"
  read f1
  cat $f1
  echo "$f1 file is displayed";;
 9)
  echo "have a nice time"
  exit;;
  *)
  echo "invalid choice entered"
  ;;
esac
done
