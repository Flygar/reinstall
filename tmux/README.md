## 
https://github.com/gpakosz/.tmux

## 备份
拷贝 `~/.tmux.conf.local` 文件
```sh
cp ~/.tmux.conf.local tmux/
```

## 恢复
```sh
cd ~
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
# cp .tmux/.tmux.conf.local 

cd -
cp tmux/.tmux.conf.local  ~/
```