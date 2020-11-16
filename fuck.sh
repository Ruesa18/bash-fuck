#!/bin/bash
# Command: Fuck
# Author: DadoMimi
# Date: 16.11.2020

function oneLineFuck {
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
    # moving
    clear
    echo "FUCK!"
    goToEnd
    sleep 0.2s

    clear
    echo ""
    echo " FUCK!"
    goToEnd
    sleep 0.2s

    clear
    echo ""
    echo ""
    echo "  FUCK!"
    goToEnd
    sleep 0.2s

    clear
    echo
    echo
    echo
    echo "   FUCK!"
    goToEnd
    sleep 0.2s

    clear
    echo
    echo
    echo
    echo
    echo "    FUCK!"
    goToEnd
    sleep 0.2s
}

function egocentricFuck {
    halfWordLength=3
    y_center=`expr $y_center - $halfWordLength`

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

oneLineFuck
moveFuck
egocentricFuck
