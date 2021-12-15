# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
    chmod -R og-rwx,u+rwx "$HOME/bin"
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ]; then
    chmod -R og-rwx,u+rwx "$HOME/.local/bin"
    PATH="$HOME/.local/bin:$PATH"
fi
