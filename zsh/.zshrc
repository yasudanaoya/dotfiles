########################################
# 環境変数
export LANG=ja_JP.UTF-8

########################################
# プロンプトのレイアウト
PROMPT="%{${fg[cyan]}%}[%*] %{${fg[yellow]}%} %~
%{${fg[magenta]}%}% [%m] %# %{${reset_color}%}"

# タイプミス時の指摘
setopt correct

# 日本語ファイル名を表示可能にする
setopt print_eight_bit

########################################
# エイリアス

alias la='ls -a'
alias ll='ls -l'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias mkdir='mkdir -p'

# docker
alias d='docker'
alias dc='docker-compose'
