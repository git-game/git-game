#!/bin/bash
if [ -z $1 ]; then 
  echo "well, someone didn't want to run the script with a file...";
  exit;
fi

file=$1
bug=7c85d987a917c2a555d1391426978f05
mesg="Level 7: \n Linus has been here...\nI love messing with these amateur programmers!!\nIf you want some real fun, then you should try resolving a conflict between this branch (tree) and code4life.\nI introduced a little bug that you should fix in the conflict. >:)\nAfter you merge these 2 files you should run the shell script again!!\n\nGood Luck!!!\n\n Hint: https://help.github.com/articles/resolving-a-merge-conflict-from-the-command-line/ "
merges=$(git log --format=%h --merges | head -1)
csum="md5sum"
if [ $(echo "$OSTYPE" | grep darwin) ];then
    csum="md5"
fi

if [ "$file" = "nextclue_input.cpp" ];then 
  if [ ${merges} ]; then 
    while read p; do 
      for w in $p;do 
        if [ `echo $w | $csum | awk '{print $1}'` = $bug ];then 
          echo -e $mesg; 
          exit; 
        fi; 
      done;
    done < $file ;
    echo -e "Well, congratulations!! You fixed my conflict!!\nIf you would like to continue, then you should checkout to the $(echo 90mP8ouQHsNe | tr -d '0-9A-Z') branch!!\n" ;
   else 
     echo -e $mesg; 
     exit;
   fi; 
else 
  echo "Looks like you passed in the wrong file";
fi
