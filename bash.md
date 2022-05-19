# Bash On-liners


## find

delete files with name pattern :

```bash
find . -type f -name "*.txt" -delete
```

Search file content (-F for non regex match on pattern, A and B for lines around match)
```bash
grep -rF -B 2 -A 2 "pattern" --include="*.pom" --include="*.sbt"
```

## tar

tar
```bash
tar -cvf archive_to_create.tar /content/folder/
```
(`-cvzf` for .tar.gz)


untar
```bash
tar -xvf archive.tar -C /untar/in/folder/
```
(same for .tar.gz)

## imperssonate (as sudoer)

```bash
sudo -u <username> bash -c '<command>'
```

## screen

-S to create named session
-r reattach (-d if attached)
ctrl+a, d to detach

## To copy until learn

```bash
## list of process by listened port
netstat -tupln

## filter process
ps aux | grep "<something>"

## non recursive subfolder disk usage
du -sh *
```
