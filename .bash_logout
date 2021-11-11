# ~/.bash_logout: executed by bash(1) when login shell exits.

# Protect user's bash_logout code file from changes and views
chmod -c a-wx,og-r,u+r "$HOME/.bash_logout"

# Source user's private bashrc code snippets if they exist
if [ -d "$HOME/.bash_logout.d" ]; then
  chmod -Rc og-rwx,u+rwX "$HOME/.bash_logout.d"
  for i in $HOME/.bash_logout.d/*.sh; do
    if [ -r "$i" ]; then
      . "$i"
    fi
  done
  unset i
fi
