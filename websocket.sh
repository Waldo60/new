#!/bin/bash
fun_bar () {
          comando[0]="$1"
          comando[1]="$2"
          (
          [[ -e $HOME/fim ]] && rm $HOME/fim
          ${comando[0]} > /dev/null 2>&1
          ${comando[1]} > /dev/null 2>&1
          touch $HOME/fim
          ) > /dev/null 2>&1 &
          tput civis
		  echo -e "\033[1;31m---------------------------------------------------\033[1;37m"
          echo -ne "${col7}    AGUARDE..\033[1;35m["
          while true; do
          for((i=0; i<18; i++)); do
          echo -ne "\033[1;34m#"
          sleep 0.2s
          done
         [[ -e $HOME/fim ]] && rm $HOME/fim && break
         echo -e "${col5}"
         sleep 1s
echo -e "\033[1;31m———————————————————————————————————————————————————\033[1;37m"
echo -e "\033[1;32m              WEBSOCKET SSH "
echo -e "\033[1;31m———————————————————————————————————————————————————\033[1;37m"
echo -e "\033[1;37m      WEBSOCKET SSH USARA A PORTA 80 e 443"

