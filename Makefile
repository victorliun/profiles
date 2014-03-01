init:
        ln -fs .profile ~
	ln -fs git-autocompletion.bash ~
sync:
        git pull
        git push