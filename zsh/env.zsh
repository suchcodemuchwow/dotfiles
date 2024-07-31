#
# "global" system stuff
#

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"

export TERM="xterm-256color"
export DOTFILES="$HOME/dotfiles"
export WORKSPACE="$HOME/dev"

# Preferred editor
if command -v cot &> /dev/null; then
  export EDITOR='nano'
else
  export EDITOR='nano'
fi

export VISUAL="$EDITOR"

# Hide the “default interactive shell is now zsh” warning on macOS
export BASH_SILENCE_DEPRECATION_WARNING=1

#
# zsh stuff
#

# Enable history so we get auto suggestions
export HISTFILE="${ZDOTDIR:-$HOME}/.zsh_history" # History filepath
export HISTSIZE=100000                           # Maximum events remembered for internal history
export SAVEHIST=$HISTSIZE                        # Maximum events stored in history file

# Stop autocorrect from suggesting undesired completions
export CORRECT_IGNORE_FILE=".*"
export CORRECT_IGNORE="_*"

# Correction prompt
export SPROMPT="Correct '%F{red}%R%f' to '%F{green}%r%f' [nyae]?"

# Enable color output for CLI tools like ls and grep
export CLICOLOR=1

#
# commands
#

# Make less the default pager with added options

# Set up a preprocessor for the less pager
[ -n "$LESSPIPE" ] && export LESSOPEN="| ${LESSPIPE} %s"
less_options=(
  # If the entire text fits on one screen, just show it and quit. (Be more
  # like "cat" and less like "more")
  --quit-if-one-screen

  # Do not clear the screen first
  --no-init

  # Like "smartcase" in Vim: ignore case unless the search pattern is mixed
  --ignore-case

  # Do not automatically fold long lines to the next line
  --chop-long-lines

  # Allow ANSI colour escapes, but no other escapes
  --RAW-CONTROL-CHARS

  # Do not ring the bell when trying to scroll past the end of the buffer
  --quiet

  # Do not complain when we are on a dumb terminal
  --dumb
)
export LESS="${less_options[*]}"
# Disable the history file to not leave a trail of previously viewed files on the system
export LESSHISTFILE='-'
export PAGER='less'

# Customize LS colors: https://github.com/eza-community/eza/blob/main/man/eza_colors.5.md
# Used by: ls, exa, fd
export LS_COLORS='di=34:ln=1;34:so=33:pi=33:ex=1;36:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'

# Privacy
# https://nextjs.org/telemetry
export NEXT_TELEMETRY_DISABLED=1
# https://www.gatsbyjs.com/docs/telemetry/
export GATSBY_TELEMETRY_DISABLED=1

# Homebrew: https://docs.brew.sh/Manpage#environment
export HOMEBREW_INSTALL_BADGE='☕'
export HOMEBREW_NO_GITHUB_API=1
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_INSECURE_REDIRECT=1
export HOMEBREW_BUNDLE_FILE="$DOTFILES/setup/Brewfile"
export HOMEBREW_CASK_OPTS="--appdir=/Applications --require-sha"

# git-friendly: disable bundle after pull
export GIT_FRIENDLY_NO_BUNDLE=true

# git-friendly: disable URL copying after push
export GIT_FRIENDLY_NO_COPY_URL_AFTER_PUSH=true

# Ripgrep config file location
export RIPGREP_CONFIG_PATH="$HOME/.ripgreprc"
