username() {
	echo "%{$FG[013]%}%n%{$reset_color%}"
}

prompt_icon() {
	echo "\u203a"

directory() {
	echo "%~"
}

current_time() {
	echo "%*"
}

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[009]%}\u274c%{reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[010]%}\u2714%{$reset_color%}"

PROMPT="%B$(username) $(directory) $(git_prompt_info)
%B$(prompt_icon) "
RPROMPT="$(current_time)"

