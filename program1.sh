#!/bin/bash
echo -e " Select 1) for printing Nth column \n 2) for printing Nth row  \n 3) for Quadrant at Nth position"
read -p "enter action : " conf

case $conf in
1)
read -p "enter the column to print: " col
COLM=` cat file | cut -d" " -f$col `
echo $COLM
;;
2)
read -p "enter the row to print: " r
ROW=` cat file | head -$r | tail -l `
echo $ROW
;;
3)
read -p " Give the range: " k
a=`cat file | head -$k | tail -1 | cut -d" " -f$k`
x=`expr $k + 1`
b=`cat file | head -$k | tail -1 | cut -d" " -f$x`
c=`cat file | head -$x | tail -1 | cut -d" " -f$k`
d=`cat file | head -$k | tail -1 | cut -d" " -f$x`
echo $a $b $c $d
;;
esac
