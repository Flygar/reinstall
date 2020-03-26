## 利用 homebrew-bundle 备份

```sh
# 执行 brew bundle dump 备份命令 
brew bundle dump --describe --force --file="~/Desktop/Brewfile"

# 参数说明 
--describe：为列表中的命令行工具加上说明性文字。
--force：直接覆盖之前生成的 Brewfile 文件。
--file="~/Desktop/Brewfile"：在指定位置生成文件。如果没有该参数，则在当前目录生成 Brewfile 文件.

```

## 利用 homebrew-bundle 恢复
```sh
# 安装 Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# 安装 mas, 没从 app store 下载软件就别装
# brew install mas

# 批量安装软件 ,收sdsdasdsdsd
brew bundle --file="~/Desktop/Brewfile"
```
