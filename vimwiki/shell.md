# Shell - ZSH / BASH

## Links

* https://explainshell.com
* https://wiki.bash-hackers.org/
* https://www.commandlinefu.com/

# Commands

## zmv

* dry run: `-n`
* change prefix: `zmv -W 'AAA_*.txt' 'BBB_*.txt'`

# diff

* diff folders with subdirs: `diff -qr dir1/ dir2/`

## sed

* in-file replacement: `-i`
* Cuts header before subst: `sed -e ld -e s/foo/bar/g /tmp/foo` 
* Extend Config file: `sed -i '/^\[global\]/ a appended-text' asdf.conf`
* in-file replace string: `sed -i 's/old-text/new-text/g' input.txt`

## tee

* echo to a root permission file: `echo test | sudo tee -a /etc/modules`

## awk

* general format: `awk 'pattern {action}' file`
* Print only unique lines: `awk '!seen[$1]++ {print $1}' foo.txt `
* Regex filter: `awk -F# '/(10c4:ea71)/ {print $1}' | xargs -l -I{} echo {}`

## sort

* remove dublicates: `sort -u`

## xargs

* `find . -name "*.txt" -type f | xargs cat`
* `find . -name "*.txt" -type f | xargs -I % cat %`   define % as replacement string 

## gnuplot
```
echo {10..1} | tr ' ' '\n' | gnuplot -p -e 'plot "<cat"' 
```

## Grep

* Recursive search, show line numbers: `grep -rn '/path' -e 'pattern'`


## Ripgrep rg

* specific files: `rg foo -g '*.bar'`
* simple replace: `rg foo readme.md -r bar`
* search hidden files: `rg foo --hidden`
* Case insensitive: `rg foo -i`

## rsync

* rsync files with specific extension: `rsync -a --include '*/' --include '*.mp3' --exclude '*' source/ target/`

# Notes

## Variables Substitutions

```
foo=$(echo bar)     # foo gets bar
foo='echo bar'      # calling $foo executes echo bar every time!
foo=$(PATH//:/\\n}  # Replace colons with new line, 2 slashes means all occurrences
${PARAMETER:=WORD}  # Assign default value if not set
```

* `${IFS}` Input Field Seperator
  * `echo ${IFS} | hd` 
  * Can be used as a space, without typing actually a space... (if they get filtered out...)

### Process Substitution

```
diff foo <(sort foo)
```

## History Expansion

```bash
!!    # complete last line
!-2   # 2nd last command
!*    # all parameters of last command
!-2*  # all parameters of 2nd last command
!:2   # 2nd argument
!$    # last argument (same as hitting: `<ALT> + .` )
!^    # first argument
```

## Brace Expansion

```bash
{1..4}      # Sequence: 1 2 3 4
{1..6..2}   # Sequence with step: 1 3 5
{01..4}     # Sequence: 01 02 03 04

mv foo_01.{txt,csv}  # this is the same as: mv foo_01.txt foo_01.csv
```

## Tilde Expansion

```bash
~+    # current working directory, $PWD
      # !! Different from . ! It is expanded BEFORE the command is run! 
      # e.g. for scripts which change the directory before the check arguments
~-    # last working directory, $OLDPWD
```

## Loops

### While Loop

```bash
# Input file and echo each line:
<file while read line: do echo "$line"; done

```

### For Loop

## change file extensions form .csv to .txt for all files:
```bash
for f in *; do mv "$f" "${f/.csv/.txt}"; done
```

## Arrays

myArray=("cat" "dog" "mouse" "frog")
for str in ${myArray[@]}; do
  echo $str
done

## Test Command

* `[ <EXPRESSION> ]` same as:  `test <EXPRESSION>`
* Exit code: 0 (TRUE) or 1 (FALSE)

```bash
if [ -e /etc/passwd ]; then
  echo "got it "
fi
```

### Tests

* `-e <FILE>` true if FILE exists
* `-f <FILE>` true if FILE exists and regular file
* `-d <FILE>` true if FILE exists and is directory 
* `-z <STRING>` true if string empty
* `-n <STRING>` true if string not empty
* `<STRING1> = <STRING2>` true if strings are equal
* `<STRING1> != <STRING2>` true if strings are not equal
* `<INTEGER2> -eq <INTEGER2>` true if integers are equal
* `<INTEGER2> -ne <INTEGER2>` true if integers are not equal
* `-v <VARIABLE>` true if variable has been set

# File Descriptors

Dublicating File Descriptor: `2>&1`

# One-liners

* `cp file.txt{,.bak}`: create backup copy of file 

