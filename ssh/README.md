## 备份
```sh
# 注意密钥安全，禁止上传
tar -zcvf sshConfig.tar.gz ~/.ssh/
```

## 恢复
```sh
tar -zxvf sshConfig.tar.gz -C ~/
```