########################################
# 環境変数
export LANG=ja_JP.UTF-8

########################################
# terminal color

# 色を使用出来るようにする
autoload -Uz colors
colors

# ls でフォルダに色をつける
# フォルダを黄、シンボリックリンクを赤
# export LSCOLORS=dxbxs
# alias ls="ls -GF"

# プロンプトのレイアウト
PROMPT="%{${fg[cyan]}%}[%*] %{${fg[yellow]}%} %~
%{${fg[magenta]}%}% [%m] %# %{${reset_color}%}"

# タイプミス時の指摘
setopt correct

# 日本語ファイル名を表示可能にする
setopt print_eight_bit

# beep を無効にする
setopt no_beep

# フローコントロールを無効にする
setopt no_flow_control

# Ctrl+Dでzshを終了しない
setopt ignore_eof

# '#' 以降をコメントとして扱う
setopt interactive_comments

# ディレクトリ名だけでcdする
setopt auto_cd

# cd したら自動的にpushdする
setopt auto_pushd
# 重複したディレクトリを追加しない
setopt pushd_ignore_dups

# 同時に起動したzshの間でヒストリを共有する
setopt share_history

# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups

# スペースから始まるコマンド行はヒストリに残さない
setopt hist_ignore_space

# ヒストリに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks

# 高機能なワイルドカード展開を使用する
setopt extended_glob

########################################
# キーバインド

# 履歴検索で *(ワイルドカード)を可能
bindkey '^R' history-incremental-pattern-search-backward

########################################
# エイリアス

alias la='ls -a'
alias ll='ls -l'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias mkdir='mkdir -p'

# sudo の後のコマンドでエイリアスを有効にする
alias sudo='sudo '

# docker
alias d='docker'
alias dc='docker-compose'
