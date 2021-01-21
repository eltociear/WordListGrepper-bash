#!/bin/bash

echo "Hello! Today is beautiful day."

# リストを読み込む
ListFile="./TargetList.txt"
if [ ! -f $ListFile ] ; then
    echo 'Word list is not found!'
    exit 1;
fi

# ループで空白行以外を読む
cat $ListFile |
while read word
do
    if [ -n "$word" ] ; then
        echo $word
        echo '*******'
    fi
done < $ListFile

echo 'bye!'
