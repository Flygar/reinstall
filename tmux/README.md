## github
https://github.com/gpakosz/.tmux

## 备份
```sh
# 对比文件
code -d ~/.tmux.conf.local ~/Desktop/dotfiles/tmux/.tmux.conf.local 

# 备份
cp ~/.tmux.conf.local ~/Desktop/dotfiles/tmux/
```

## 恢复
```sh
# clone至home目录
git clone https://github.com/gpakosz/.tmux.git ~
ln -s -f .tmux/.tmux.conf

# 回到dotfile目录将配置文件拷贝过来
cp  ~/Desktop/dotfiles/tmux/.tmux.conf.local  ~/
```