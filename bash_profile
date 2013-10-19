# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

[[ $PATH == *"/opt/bin"* ]] || PATH=$PATH:/opt/bin
export PATH

TZ='Asia/Shanghai'; export TZ
sudo hostname linode
stty -ixon 2>/dev/null

export INCLUDE_PATH=/opt/include
export LIBRARY_PATH=/opt/lib
export LD_LIBRARY_PATH=/opt/lib
