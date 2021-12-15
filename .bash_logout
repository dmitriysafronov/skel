# ~/.bash_logout: executed by bash(1) when login shell exits.

# Protect user's bash_logout code file from others
chmod og-rwx,u+rwX "$HOME/.bash_logout"

# Source user's private bashrc code snippets if they exist
if [ -d "$HOME/.bash_logout.d" ]; then
  chmod -R og-rwx,u+rwX "$HOME/.bash_logout.d"
  for i in $HOME/.bash_logout.d/*; do
    if [ -r "$i" ]; then
      . "$i"
    fi
  done
  unset i
fi
