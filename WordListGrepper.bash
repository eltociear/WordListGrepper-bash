#!/bin/bash

# ******************** main処理 ********************
echo "Hello! Today is beautiful day."

# 対象ディレクトリ取得
echo "input target directory:"
read tmpDir
# TODO:ディレクトリ存在確認

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
