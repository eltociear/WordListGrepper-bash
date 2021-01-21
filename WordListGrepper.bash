#!/bin/bash

# ******************** main処理 ********************
echo "Hello! Today is beautiful day."

# 対象ディレクトリ取得
echo "input target directory:"
read tmpDir
targetDir="../$tmpDir/"
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
        # grep実行し、結果出力
        grep -rn --color=auto $word $targetDir
    fi
done < $ListFile

echo 'bye!'
