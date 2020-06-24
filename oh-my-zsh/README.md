## oh-my-zsh
github地址：https://github.com/ohmyzsh/ohmyzsh

## install
```sh
# Basic Installation
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## .zshrc
```sh
cd dotfiles

# 备份
cp ~/.zshrc zsh/.zshrc

# 还原
cp zsh/.zshrc ~/.zshrc
```

## zsh-theme
```sh
cd dotfiles

# 备份
cp ~/.oh-my-zsh/themes/steeef.zsh-theme zsh/steeef.zsh-theme

# 还原
cp zsh/steeef.zsh-theme ~/.oh-my-zsh/themes/steeef.zsh-theme
```