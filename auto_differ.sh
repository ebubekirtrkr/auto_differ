#!/bin/bash
function print_sth () {
   nmbr=$1
   gcc -o main.out main.c
   ./main.out <input${nmbr}.txt >myout${nmbr}.txt
   cmd_out=$(diff -s output${nmbr}.txt myout${nmbr}.txt)
   out="Files output${nmbr}.txt and myout${nmbr}.txt are identical"
   if [ "$cmd_out" == "$out" ]; then
      printf 'There is no differences \n\n'
   else
      printf 'There are differences \n'
      echo "$cmd_out"
   fi
}
if [ $# -eq 0 ];then
   read -p 'enter the number of input file :' nmbr
   print_sth $nmbr
elif [ $1 == "all" ];then
   nmbr=1
   to=$(($2 + 1))
   while [ $nmbr -lt $to ]; do
   printf 'checking %d. input\n' "$nmbr"
   print_sth $nmbr
   nmbr=$(( $nmbr + 1 ))
   done
else
   nmbr=$1
   print_sth $nmbr
fi