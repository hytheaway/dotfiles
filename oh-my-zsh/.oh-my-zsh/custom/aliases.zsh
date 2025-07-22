# corrective
alias pip=pip3

# shortening commands
alias reload="source ~/.zshrc"
alias grep="grep --color=auto"
alias zshbinds='bindkey -L'
alias ghosttybinds='ghostty +list-keybinds'

# opening with nvim
alias zshconfig="nvim -n ~/.zshrc ~/.oh-my-zsh/custom/aliases.zsh"
alias allconfig="nvim -n ~/.zshrc ~/.oh-my-zsh/custom/aliases.zsh ~/.config/ghostty/config ~/.config/ohmyposh/base.toml ~/.config/yabai/yabairc ~/.config/yazi/yazi.toml"
alias fzv='fzf -m --preview="bat --color=always {}" --bind "enter:become(nvim {+})"'
alias ghosttyconfig='nvim ~/.config/ghostty/config'

# changing directories
alias repos='cd ~/dev/GitHub_Local/Repositories'
alias ohmyzsh="cd ~/.oh-my-zsh"
alias website='cd ~/Dropbox/GitHub-Website/hytheaway.github.io/'
alias dotfiles='cd ~/.dotfiles/'
