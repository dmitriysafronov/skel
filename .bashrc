# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Protect user's bashrc code file from changes and views
chmod -c a-wx,og-r,u+r "$HOME/.bashrc"

# Source user's private bashrc code snippets if they exist
if [ -d "$HOME/.bashrc.d" ]; then
  chmod -Rc og-rwx,u+rwX "$HOME/.bashrc.d"
  for i in $HOME/.bashrc.d/*.sh; do
    if [ -r "$i" ]; then
      source "$i"
    fi
  done
  unset i
fi
