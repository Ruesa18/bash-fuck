#!/bin/bash
# Command: Fuck
# Author: Sandro Rüfenacht
# Date: 16.11.2020
source bin/fuck-files/config.sh

function oneLineFuck {
    if [ $oneLineFuckBackgroundColor != false ]; then
      printf %b $oneLineFuckBackgroundColor '\e[8]' '\e[H\e[J'
    fi

    color=$COLOR_WHITE
    if [ $oneLineFuckForegroundColor != false ]; then
      color=$oneLineFuckForegroundColor
    fi
    echo -e $color

    clear
    echo "FUCK!"
    goToEnd
    sleep 0.5s

    clear
    echo "FUCK FUCK!"
    goToEnd
    sleep 0.5s

    clear
    echo "FUCK FUCK FUCK!"
    goToEnd
    sleep 1s
}

function moveFuck {
    spacing=""
    if [ $moveFuckBackgroundColor != false ]; then
      printf %b $moveFuckBackgroundColor '\e[8]' '\e[H\e[J'
    fi

    color=$COLOR_WHITE
    if [ $moveFuckForegroundColor != false ]; then
      color=$moveFuckForegroundColor
    fi
    echo -e $color

    for((i=1; i<=num_lines-2; i++)) do
        clear
        for (( c=1; c<=i; c++ ))
        do
            echo
        done
        spacing="$spacing "
        echo "$spacing Fuck"
        goToEnd
        sleep 0.1s
    done
}

function egocentricFuck {
    halfWordLength=3
    y_center=`expr $y_center - $halfWordLength`
    if [ $egocentricFuckBackgroundColor != false ]; then
      printf %b $egocentricFuckBackgroundColor '\e[8]' '\e[H\e[J'
    fi

    color=$COLOR_WHITE
    if [ $egocentricFuckForegroundColor != false ]; then
      color=$egocentricFuckForegroundColor
    fi
    echo -e $color

    clear
    tput cup $x_center $y_center
    echo "F    "
    goToEnd
    sleep 0.5s

    clear
    tput cup $x_center $y_center
    echo "FU   "
    goToEnd
    sleep 0.5s

    clear
    tput cup $x_center $y_center
    echo "FUC  "
    goToEnd
    sleep 0.5s

    clear
    tput cup $x_center $y_center
    echo "FUCK "
    goToEnd
    sleep 0.5s

    clear
    tput cup $x_center $y_center
    echo "FUCK!"
    goToEnd
    sleep 1s
}

function goToEnd {
    tput cup $num_lines 0
}


# Egocentric fuck
num_lines=`tput lines`
num_cols=`tput cols`
x_center=`expr $num_lines / 2`
y_center=`expr $num_cols / 2`

if [ $oneLine == true ]; then
  oneLineFuck
fi

if [ $movingFuck == true ]; then
  moveFuck
fi

if [ $egocentricFuck == true ]; then
  egocentricFuck
fi
