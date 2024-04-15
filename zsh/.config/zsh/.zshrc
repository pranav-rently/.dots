source $ZDOTDIR/zshrc

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# bun completions
[ -s "/home/rently/.bun/_bun" ] && source "/home/rently/.bun/_bun"

# asdf completions
. "$HOME/.asdf/asdf.sh"
. "$HOME/.asdf/completions/asdf.bash"

[ -f "/home/rently/.ghcup/env" ] && source "/home/rently/.ghcup/env" # ghcup-env

# opam configuration
# bash -c "sh <(curl -fsSL https://raw.githubusercontent.com/ocaml/opam/master/shell/install.sh)"

# starship prompt
eval "$(starship init zsh)"

# zoxide directory jumping
eval "$(zoxide init zsh)"

# pnpm
export PNPM_HOME="/home/rently/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

GPG_TTY=$(tty)
export GPG_TTY
