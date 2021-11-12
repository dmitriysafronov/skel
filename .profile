# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# Protect user's profile code file from changes and views
chmod -c a-wx,og-r,u+r "$HOME/.profile"

# Source user's private profile code snippets if they exist
if [ -d "$HOME/.profile.d" ]; then
  chmod -Rc og-rwx,u+rwX "$HOME/.profile.d"
  for i in $HOME/.profile.d/*; do
    if [ -r "$i" ]; then
      . "$i"
    fi
  done
  unset i
fi
