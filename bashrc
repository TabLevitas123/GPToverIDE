# Load project environment variables
if [[ -f /workspace/.env ]]; then
  set -o allexport
  source /workspace/.env
  set +o allexport
fi

# Add pyenv shims if installed
if [[ -d "$HOME/.pyenv" ]]; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
fi
