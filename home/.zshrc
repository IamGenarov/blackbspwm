# ----------------------------
# Oh My Zsh + P10K Instant Prompt
# ----------------------------
export ZSH_DISABLE_COMPFIX=true

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# ----------------------------
# Git branch con icono
# ----------------------------
autoload -Uz vcs_info

precmd() {
  vcs_info
}

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats '%F{220}[%F{198}%f %F{220}%b%f]%f'
zstyle ':vcs_info:git:*' actionformats '%F{220}[%F{198}%f %F{220}%b%f %F{196}|%a%f]%f'

# ----------------------------
# Icono de directorio
# ----------------------------
function dir_icon {
  if [[ "$PWD" == "$HOME" ]]; then
    echo "%F{45}%f"
  else
    echo "%F{45}%f"
  fi
}

# ----------------------------
# Ruta acortada ~/Do/Pr/ etc.
# ----------------------------
function short_path {
  local full_path="${PWD/#$HOME/~}"
  local IFS='/'
  local -a parts result

  for part in ${(s:/:)full_path}; do
    if [[ "$part" == "~" || "$part" == "" ]]; then
      result+="$part"
    else
      result+="${part[1,2]}"
    fi
  done
  echo "${(j:/:)result}/"
}

# ----------------------------
# Prompt personalizado
# ----------------------------
PS1='%F{45}🎭%f  %F{201}%n%f  $(dir_icon) %F{45}$(short_path)%f%F{129}${vcs_info_msg_0_}%f  %F{213}❯%f '

# ----------------------------
# Colores para archivos (LS_COLORS)
# ----------------------------
LS_COLORS="di=38;2;129;161;193:fi=38;2;216;222;233:ex=38;2;163;190;140:ln=38;2;208;135;112:so=38;2;235;203;139:pi=38;2;180;142;173:bd=38;2;191;97;106:cd=38;2;143;188;187:or=38;2;255;85;85:mi=38;2;255;0;0"
export LS_COLORS

# ----------------------------
# Alias: cat y ls bonitos
# ----------------------------
alias cat="bat --theme='Solarized (dark)'"

alias ls='eza --icons=always --color=always'

alias ll='eza --icons=always --color=always -la'

# ----------------------------
# Syntax Highlight y autocompletado
# ----------------------------
ZSH_HIGHLIGHT_STYLES[command]='fg=81'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=82'
ZSH_HIGHLIGHT_STYLES[function]='fg=220'
ZSH_HIGHLIGHT_STYLES[alias]='fg=213'
ZSH_HIGHLIGHT_STYLES[external]='fg=208'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=199'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=196'

# ----------------------------
# PATH extra
# ----------------------------
export PATH="$HOME/.bin:$PATH"

