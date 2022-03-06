run:
	# git clone 并不会拉取子模块的内容，需要用这个命令拉取子模块
	git submodule update --init --recursive
	# 在主项目拉取时，子项目也会更新到最新
	git config --local submodule.recurse true
	# 在主项目push时，检查所有子项目是否已推送
	git config --local push.recurseSubmodules check
