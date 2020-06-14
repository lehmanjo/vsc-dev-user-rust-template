#!/bin/bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
~/.cargo/bin/rustup set profile default 
~/.cargo/bin/rustup self update 
~/.cargo/bin/rustup component add rls rust-analysis 
~/.cargo/bin/rustup completions bash > ~/.rustup_completions_bash 
echo '. ~/.rustup_completions_bash' >> ~/.bashrc 
sed -i 's|\(PS1=.*\@\)\\h|\1docker|g' ~/.bashrc 
chmod 0700 ~/. 
chmod 0640 ~/.bash*
chmod 0640 ~/.profile*