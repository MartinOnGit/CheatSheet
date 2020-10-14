# Bash On-liners


## find

delete files with name pattern :

```bash
find . -type f -name "*.txt" -delete
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

## Did you really forgot this ?

```bash
## list of process by listened port
netstat -tupln

## filter process
ps aux | grep "<something>"
```
