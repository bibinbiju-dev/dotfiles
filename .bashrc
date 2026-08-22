# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
source ~/.local/share/bash/rc

# Make an alias for invoking commands you use constantly
alias p='python'
alias q='clear'
alias reload='source ~/.bashrc'
alias ani='ani-cli'
alias tt='tmux'
alias vim='nvim'
alias y='yazi'
alias lg='lazygit'
#alias vf='nvim $(fzf -m --preview="bat --color=always {}")'
# alias mvfz='mv "$(fd --type f | fzf)" "$(zoxide query -l | fzf)"'
# alias cpfz='cp "$(fd --type f | fzf)" "$(zoxide query -l | fzf)"'
#alias vf='nvim $(fd --type f -H -I --exclude .git | fzf -m --preview="bat --color=always {}")'
alias mvfz='mv -iv "$(fd --type f -H -I --exclude .git | fzf)" "$(zoxide query -l | fzf)"'
alias cpfz='cp -iv "$(fd --type f -H -I --exclude .git | fzf)" "$(zoxide query -l | fzf)"'
#alias sv="source .venv/bin/activate"
alias venv='[ -f .venv/bin/activate ] && source .venv/bin/activate || echo "No .venv found"'
#alias ff="fzf --preview 'bat --style=numbers --color=always --line-range :300 {}'"
#alias ff="fzf --preview 'bat --style=numbers --color=always --line-range=:300 {} 2>/dev/null || cat {}'"
#alias ff="fzf --preview 'bat --style=numbers --color=always --theme=Dracula --line-range=:300 {} 2>/dev/null || cat {}'"
alias ffb='ff | xargs -r bat --style=numbers --color=always  --line-range=:300'

jf() {
  local dir
  dir=$(fd --type d --hidden --exclude .git . ~ 2>/dev/null | fzf)
  [ -n "$dir" ] && cd "$dir" || return
}
