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

## date
timestamp to human readable
```bash
## -u for utc, otherwise beaware of timezone...
date -ud @1588409326

## the miliseconds hack
date -ud @$(((1588409326000 + 500)/1000))
```

date to timestamp
```bash
#timestamp in seconds
date -ud 'YYYY-MM-DD HH:mm:ss' +%s
#timestamp in milliseconds (%6n for µs, %N for nano), does not work on non GNU
date -ud 'YYYY-MM-DD HH:mm:ss.nnnnnnnnn' +%s%3N
## As european, beware of AM and PM :) (if not specified, date assumes the format is on 24h)
```

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

## distribution info
cat /etc/*-release
```
