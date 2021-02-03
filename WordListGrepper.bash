#!/bin/bash

# ******************** main処理 ********************
echo "Hello! Today is beautiful day."

# 対象ディレクトリ取得
echo "input target directory:"
read tmpDir
targetDir="../$tmpDir/"
# ディレクトリの存在確認
if [ ! -e $targetDir ] ; then
    echo 'Input directory does not exist!'
    exit 1
fi

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
        # TODO: デフォルトは大文字小文字無視するが、オプションを引数で指定できるようにしたい
        grep -rni --color=auto " $word " $targetDir
    fi
done < $ListFile

echo 'bye!'
