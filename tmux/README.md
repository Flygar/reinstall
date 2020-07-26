## github
https://github.com/gpakosz/.tmux

## 备份
拷贝 `~/.tmux.conf.local` 文件
```sh
cd dotfiles
cp ~/.tmux.conf.local tmux/
```

## 恢复
```sh
cd ~
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf

# 回到home目录将配置文件拷贝过来
cd -
cp tmux/.tmux.conf.local  ~/
```