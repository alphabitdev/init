```
wget https://raw.githubusercontent.com/alphabitdev/init/master/remote/createVirtualHost.sh
chmod +x ./createVirtualHost.sh
./createVirtualHost.sh <DOMAIN_NAME>
```

```
wget https://raw.githubusercontent.com/alphabitdev/init/master/remote/createSudoSSHUser.sh
chmod +x ./createSudoSSHUser.sh
./createSudoSSHUser.sh <USER_NAME> <PUB_KEY_URL>
```



# utls
clear commit history
```
# Checkout new branch
git checkout --orphan newBranch

# Add all files and commit them
git add -A

# Commit 
git commit -m "Initial commit"

# Delete the master branch
git branch -D master

# Rename the current branch to master
git branch -m master

# Force push master branch to github
git push -f origin master

# remove the old files
git gc --aggressive --prune=all     
```
