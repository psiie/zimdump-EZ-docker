## About
I made sh scripts that make the use of zimdump on docker turnkey. Now you can treat the zimdump.sh file as if it was *the* tool doing the work inline with your terminal.

## How to use
./zimdump.sh

Must use /mount as input and output. Yes, it's /mount because this command is executed inside the docker and the docker uses the root directory.

Place your zim you want to extract in the mount folder in this directory. When referencing this zim file with zimdump.sh, prepend a "/mount". Inside the docker container, the folder called mount (in this directory) is linked to the /mount folder on the root of the contianer's OS. I tried to hide as much of the docker as possible ;)

`./zimdump.sh`

`./zimdump.sh -i /mount/01-08-17_20-20-39.zim`

`./zimdump.sh /mount/en-wikipedia.zim -D /mount/out`

## Zimdump --help

```
usage: zimdump [options] zimfile

options:
  -F        print fileinfo
  -N ns     print info about namespace
  -i        print info about articles
  -d        print data of articles
  -p        print page
  -f title  find article
  -u url    find article by url
  -t        sort (and find) articles by title instead of url
  -l        list articles
  -L        list articles as table
  -o idx    locate article by index
  -x        print extra parameters
  -n ns     specify namespace (default 'A')
  -D dir    dump all files into directory
  -v        verbose (print uncompressed length of articles when -i is set)
                    (print namespaces with counts with -F)
  -Z        dump index data
  -C        verify checksum

examples:
  zimdump -F wikipedia.zim
  zimdump -l wikipedia.zim
  zimdump -f Auto -i wikipedia.zim
  zimdump -f Auto -d wikipedia.zim
  zimdump -f Auto -l wikipedia.zim
  zimdump -f Auto -l -i -v wikipedia.zim
  zimdump -o 123159 -l -i wikipedia.zim
```