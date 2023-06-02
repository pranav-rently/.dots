source $ZDOTDIR/zshrc

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To load rbenv automatically
eval "$(rbenv init -)"

alias luamake=/home/rently/builds/lua-language-server/3rd/luamake/luamake

# bun completions
[ -s "/home/rently/.bun/_bun" ] && source "/home/rently/.bun/_bun"

# asdf completions
. "$HOME/.asdf/asdf.sh"
. "$HOME/.asdf/completions/asdf.bash"
