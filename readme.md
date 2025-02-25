```shell
wget -e https_proxy=proxytop:1081 -O plugin.tar.gz https://github.com/jan-bar/vfox/archive/refs/heads/plugin.tar.gz
tar -xzvf plugin.tar.gz --strip-components 1 --exclude=.gitignore --exclude=readme.md
```
