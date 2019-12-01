# Load dotfiles
for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file 

# Colouriser
GRC=`which grc`
if [ "$TERM" != dumb ] && [ -n "$GRC" ]
	then
		alias colourify="$GRC -es --colour=auto"
		alias configure='colourify ./configure'
		for app in {diff,make,gcc,g++,ping,traceroute}; do
			alias "$app"='colourify '$app
		done
fi

# highlighting inside manpages and elsewhere
export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline
