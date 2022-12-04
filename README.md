# Repos
all my Repos per SSH

# creating initial Repo:
```
$ repo init -u git@github.com:seapath/repo-manifest.git

replace tools.xml with own version of it!

$ git init

$ git add .

$ git commit -m "msg"

$ git remote set-url origin git@github.com/USERNAME/REPOSITORY.git

$ git fetch

$ git rebase

$ git push
```

# Fetching Repos
```
$ ssh-add ~/.ssh/github

$ repo init -u git@github.com:Wlad79/Repos.git

$ repo init -m yocto_raspberrypi.xml # this is example only

$ repo sync
```

# Pushing of Changes
```
$ ssh-add ~/.ssh/github

$ git checkout -b "featureXY"

$ git log && repo status

$ git push -u github_wlad79_YoctoConfRaspberryPi featureXY

merge on remote GitHub the branch featureXY to main!
```
