# Repos
all my Repos per SSH

# creating initial Repo:
```
$ git clone git@github.com:seapath/repo-manifest.git
$ cd repo-manifest
remove unused files and folders: .github , .git , .gitreview, LICENSE, README.adoc
replace tools.xml with own version of it!
$ git init
$ git add .
$ git commit -m "msg"
$ git remote add origin https://github.com/USER/REPO.git
or
$ git remote set-url origin git@github.com/USERNAME/REPOSITORY.git
$ git remote -v
$ git fetch
$ git rebase
$ git push
```

# Fetching Repos
```
$ eval "$(ssh-agent -s)"
$ ssh-add ~/.ssh/github
$ repo init -u git@github.com:Wlad79/Repos.git
$ repo init -m oe_tegra.xml # this is example only
$ repo sync
$ repo forall -c git status
```

# Pushing of Changes with review
```
$ eval "$(ssh-agent -s)"
$ ssh-add ~/.ssh/github
$ git checkout -b "featureXY"
$ git log && repo status
$ git push -u github_wlad79_YoctoConfRaspberryPi featureXY
merge on remote GitHub the branch featureXY into main with pull-request!
```

# Pushing of Changes without review
```
$ git branch -a
$ git checkout main
$ git add .
$ git status
$ git commit -m "commit message"
$ git push
$ git status
```

## create manifest automatically for errors findings
```
$ repo init -u git@github.com:Wlad79/Repos.git
$ repo sync
$ repo manifest -o .xml -r
make changes in .xml
$ cp .xml .../.repo/manifests/default.xml
$ repo sync
```
