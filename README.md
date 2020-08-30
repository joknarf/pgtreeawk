# pgtreeawk
Unix process hierachy tree display for specific processes (kind of mixed pgrep + pstree)

awk version of [pgtree](https://github.com/joknarf/pgtree) 

pgtree is also able to send signal to found processes and all their children

Should work on any Unix that can execute :
```
# /usr/bin/pgrep 
# /usr/bin/ps -e -o pid,ppid,user,comm,args
```
## Usage
```
# pgtree -h
    usage: pgtree [-ICya] [-c|-k|-K] [-p <pid1>,...|<pgrep args>]

    -I : use -o uid instead of -o user for ps command
         (if uid/user mapping is broken ps command can be stuck)
    -c : display processes and children only
    -k : kill -TERM processes and children
    -K : kill -KILL processes and children
    -y : do not ask for confirmation to kill
    -C : no color (default colored output on tty)
    -a : use ascii characters

    by default display full process hierarchy (parents + children of selected processes)

    -p <pids> : select processes pids to display hierarchy (default 1)
    <pgrep args> : use pgrep to select processes (see pgrep -h)

    found pids are prefixed with ▶
```
## Examples
show all parents and children of processes matching `bash`

<img alt="# pgtree bash" src="https://user-images.githubusercontent.com/10117818/91555007-7d69a900-e930-11ea-98a2-8d81b7fdf0d3.png" width="850px">

show processes matching `bash` and their children

<img alt="# pgtree -c bash" src="https://user-images.githubusercontent.com/10117818/91555156-c15cae00-e930-11ea-9479-7c9b2c7b249e.png" width="850px">

kill all `sh` processes of user joknarf and their children

<img alt="#pgtree -k -u joknarf -x sh" src="https://user-images.githubusercontent.com/10117818/91555424-48aa2180-e931-11ea-8f19-6054458aa79c.png" width="850px">

## Demo

<img alt="output" src="https://user-images.githubusercontent.com/10117818/91558307-64fc8d00-e936-11ea-85bc-08eae29a58ce.gif" width="850px">

