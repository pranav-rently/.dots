source $ZDOTDIR/zshrc

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# bun completions
[ -s "/home/rently/.bun/_bun" ] && source "/home/rently/.bun/_bun"

# asdf completions
. "$HOME/.asdf/asdf.sh"
# . "$HOME/.asdf/completions/asdf.bash"

[ -f "/home/rently/.ghcup/env" ] && source "/home/rently/.ghcup/env" # ghcup-env

# opam configuration
# bash -c "sh <(curl -fsSL https://raw.githubusercontent.com/ocaml/opam/master/shell/install.sh)"

# starship prompt
eval "$(starship init zsh)"

# zoxide directory jumping
eval "$(zoxide init zsh)"

GPG_TTY=$(tty)
export GPG_TTY

# add Pulumi to the PATH
export PATH=$PATH:/home/rently/.pulumi/bin
