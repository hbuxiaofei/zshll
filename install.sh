#!/usr/bin/env bash

cd $(dirname $0)

[ -e $HOME/.zshrc ] && rm -rf $HOME/.zshrc
[ -d $HOME/.oh-my-zsh ] && rm -rf $HOME/.oh-my-zsh
[ -d $HOME/.zsh ] && rm -rf $HOME/.zsh

cp -rf ./zsh/oh-my-zsh $HOME/.oh-my-zsh
cp -rf ./zsh/zsh-syntax-highlighting $HOME/.oh-my-zsh/plugins/
cp -rf ./zsh/zsh-autosuggestions $HOME/.oh-my-zsh/plugins/

cp -f ./zsh/oh-my-zsh/templates/zshrc.zsh-template $HOME/.zshrc
echo "export TERM=xterm-256color" >> $HOME/.zshrc

mkdir -p $HOME/.zsh/completions
echo "fpath=(\$HOME/.zsh/completions \$fpath)" >> $HOME/.zshrc
echo "autoload -U compinit && compinit" >> $HOME/.zshrc


echo -e "\033[32m- [Info] You may need to resetting the ENV...\033[0m"
echo -e "\033[32m- [Info] Install successfully...\033[0m"

exit 0
