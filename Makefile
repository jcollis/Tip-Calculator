# Automatically Starts SSH Agent To Avoid Typing Passphrase Every Time
ssh-agent:
	eval "$(ssh-agent -s)"
	ssh-add --apple-use-keychain ~/.ssh/id_ed25519

# Logs In To CAEN Account
ssh-login:
	ssh jcollis@login.engin.umich.edu

# Runs Rysnc Command To Sync Files To Caen Account
sync:
	rsync -rtv --exclude '.git*' --filter=':- .gitignore' ../p1-fakebook/ jcollis@login.engin.umich.edu:eecs484/p1-fakebook-copy

# Logs Into SQLplus and starts it
sql-login:
	rlwrap sqlplus

# Automatically Runs Add Commit And Push For Whole Repository
gitAll:
	git add .
	git commit -m "$m"
	git push -u origin main

# Runs git add, commit, and push automatically
git:
	git add $f
	git commit -m "$m"
	git push -u origin main

# Runs git status
s:
	git status
