# Global git config

Exemple of global git configuration (`~/.gitconfig`)

```
[alias]
        lg = log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --
        pushf = push --force-with-lease
[user]
        name = <Full Name>
        email = <GitHub/GitLab commit-email>
[pull]
        ff = only
[init]
        defaultBranch = main
[push]
        autoSetupRemote = true
[branch]
        sort = -committerdate
[tag]
        sort = version:refname
[diff]
        algorithm = histogram
[fetch]
        prune = true
        pruneTags = true
        all = true
[rebase]
        autoSquash = true
```
