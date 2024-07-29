echo "🏃 Running User Init\n"
set -x

echo "✅ - Add zsh"
git clone https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
cp $HOME/.oh-my-zsh/templates/zshrc.zsh-template $HOME/.zshrc
chmod 660 $HOME/.zshrc
sed -i '1iZSH_DISABLE_COMPFIX=true' $HOME/.zshrc
sed -i '/^# DISABLE_MAGIC_FUNCTIONS.*/s/^#//' $HOME/.zshrc
echo "setopt PROMPT_CR" >> $HOME/.zshrc
echo "setopt PROMPT_SP" >> $HOME/.zshrc
echo "export PROMPT_EOL_MARK=\"\"" >> $HOME/.zshrc
echo "😎😎😎😎😎"

echo "✅ - Fix Git"
# sort out git
echo "git config --global http.sslVerify false" | tee -a $HOME/bashrc -a $HOME/zshrc
echo "git config --global user.name 'Dino Derek'" | tee -a $HOME/bashrc -a $HOME/zshrc&& \
echo "git config --global user.email 'derek@dinosaur.com'" | tee -a $HOME/bashrc -a $HOME/zshrc
echo "git config --global credential.helper 'cache --timeout=172800'" | tee -a $HOME/bashrc -a $HOME/zshrc
echo "git config --global pull.rebase 'false'" | tee -a $HOME/bashrc -a $HOME/zshrc
echo "git config --global push.default 'simple'" | tee -a $HOME/bashrc -a $HOME/zshrc
echo "🤗🤗🤗🤗🤗"