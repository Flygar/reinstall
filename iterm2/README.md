把这个配置文件，复制到新电脑的下面目录下
cp Profile.json ~/Library/Application Support/iTerm2/DynamicProfiles/
然后启动新电脑的 iTerm2，这时配置已经加载迁移成功啦，DynamicProfiles目录下的文件可以删除，因为 iTerm2 启动里，会自动加载这个目录下的配置内容，但是配置读取成功后，iTerm是另外保存配置的。

https://www.iterm2.com/documentation-dynamic-profiles.html