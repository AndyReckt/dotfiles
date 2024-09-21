export VISUAL="${EDITOR}"
export TERM='kitty'
export TERMINAL='kitty'
export BROWSER='firefox'
export HISTORY_IGNORE="(ls|cd|pwd|exit|sudo reboot|history|cd -|cd ..)"

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

HISTFILE=~/.config/zsh/zhistory
HISTSIZE=5000
SAVEHIST=5000

setopt AUTOCD              # change directory just by typing its name
setopt PROMPT_SUBST        # enable command substitution in prompt
setopt MENU_COMPLETE       # Automatically highlight first element of completion menu
setopt LIST_PACKED		   # The completion menu takes less space.
setopt AUTO_LIST           # Automatically list choices on ambiguous completion.
setopt HIST_IGNORE_DUPS	   # Do not write events to history that are duplicates of previous events
setopt HIST_FIND_NO_DUPS   # When searching history don't display results already cycled through twice
setopt COMPLETE_IN_WORD    # Complete from both ends of a word.

if [[ "$TERM" == (kitty*|alacritty*|termite*|gnome*|konsole*|kterm*|putty*|rxvt*|screen*|tmux*|xterm*) ]]; then
	# add-zsh-hook -Uz precmd xterm_title_precmd
	# add-zsh-hook -Uz preexec xterm_title_preexec
fi

####################

alias mirrors="sudo reflector --verbose --latest 5 --country 'France' --age 6 --sort rate --save /etc/pacman.d/mirrorlist"
alias grub-update="sudo grub-mkconfig -o /boot/grub/grub.cfg"


alias ls='lsd -a --group-directories-first'
alias ll='lsd -la --group-directories-first'
alias of="onefetch"

alias nf="fastfetch"
alias neofetch="fastfetch"

eval "$(starship init zsh)"
eval "$(zoxide init zsh --cmd cd)"
export PATH=$PATH:/home/andy/.spicetify
