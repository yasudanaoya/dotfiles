
echo 'declare the variable'
# 一応、環境変数に入れてます
DOT_DIR=${HOME}/dotfiles

echo 'ブランチの切り替え'
git checkout setup4ua-helpers

echo 'homebrew install command'
# homebrew のインストール
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo 'Run app install on homebrew'
# Brefile に乗ってるアプリケーションを HomeBrew を使ってインストールしてくれます。
# すでにインストールされているものは無視される & 必要なアプリのみ残してあとはコメントアウトしてます。
# 欲しかったらコメントアウトを外してください。
brew bundle

echo 'Paste symbolic link to home directory'
cd ~
# zsh を使う選択をしたら、作成者と同じ shell 環境が手に入れられます
# めちゃめちゃカスタマイズしてるので、使いやすいかどうかはわかりません。ハマれば最強と思うに違いない出来栄え
# 要らない可能性の方が高いので OFF
# ln -s ${DOT_DIR}/zsh/.zshenv ${HOME}/.zshenv

# git の config ファイルです。
# エイリアス(任意に決めるコマンドを省略する技)が張られてます。
# この下の、ignorefile を有効にする設定も書いてるので ON
ln -s dotfiles/.gitconfig $.gitconfig

# 必須で ignore してほしいので ON
# ln -s ${DOT_DIR}/.gitignore_global ${HOME}/.gitignore_global
# にしたいが何故かうまくいかないので
ln -s dotfiles/.gitignore_global .gitignore_global

# 微妙なのでコメントアウト
# if [ -e ${HOME}/Library/Application\ Support/Code/User ]; then
#   echo 'vscode'
#   rm -f ${HOME}/Library/Application\ Support/Code/User/settings.json

#   ln -s ${DOT_DIR}/settings.json $HOME/Library/Application\ Support/Code/User
# fi

cd dotfiles

echo '🎉Finish'
echo 'Please restart the terminal'
