```shell
curl -x http://proxytop:1081 -sSL https://github.com/jan-bar/vfox/archive/refs/heads/plugin.tar.gz | tar xzC .version-fox \
	--strip-components 1 --exclude=.gitignore --exclude=readme.md
```
