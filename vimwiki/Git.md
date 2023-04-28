# Git Cheatsheet

| `git add --update`              | git add modified files                 |
| `git checkout <hash> -- <file>` | revert a signel file to a specific rev |
| `git log -p -- <file>`          | file with diffs for each change        |
| `git diff <branch> --stat`      | List diff files with stats             |

## Merge Conflicts 

### Using ours or theirs 

  * `git reset HEAD -- <file>`
  * `git checkout --ours -- <file>`

## Git mergetool with vim 

  `+-------+------+--------+`
  `| LOCAL | BASE | REMOTE |`
  `+-------+------+--------+`
  `|                       |`
  `|        MERGED         |`
  `|                       |`
  `+-----------------------+`

  LOCAL   - file from the current branch
  BASE    - common ancestor, how file looked before both changes,
            point  where the 2 branches started diverting
  REMOTE  - file you are merging into your branch
  MERGED  - merge result, --> this is what gets saved in the repo


  * get the changes from remote / local /base:        `:diffge RE / LO / BA`
  * next / previous change:                           `[c` and `]c`
  * next / previous conflict:                         `[n` and `]n`   (unimpared.vim plugin)
  * quits vim with error, for not resolved merge:     `:cq`

## Git Diff Presentation

* https://git-scm.com/docs/git-merge#_how_conflicts_are_presented


## Update all submodules 
 * iterate submodules:          `git submodule foreach git fetch --all`
 * only first time:             `git submodule update --init --recursive`
 * update all to new commits:   `git submodule update --recursive --remote`
 * update all to repo hash:     `git submodule update`
 * hash of all submodule:       `git submodule --quiet foreach git rev-parse --short HEAD`
 * display branch names:        `git submodule --quiet foreach 'echo -e $sm_path: `git rev-parse --abbrev-ref HEAD`' | column -t`

## Add Submodule

* track branch: `git submodule add -b <branch-name> <path/url>`
* track branch, existing submodule: `git submodule set-branch -b  <branch-name> <module-path>`

## Remove submodule 

* `git rm <submodule>`
* additional steps, for local repo if desired:
  * `rm -rf .git/modules/<submodule>`
  * `git config --remove-section submodule.<submodule>`


### Old procedure:

  1. Remove the submodule entry from .git/config:
    `git submodule deinit -f path/to/submodule`

  2. Remove the submodule directory from the superproject's .git/modules directory:
     `rm -rf .git/modules/path/to/submodule`

  3. Remove the entry in .gitmodules and remove the submodule directory located at path/to/submodule
     `git rm -f path/to/submodule`

## Git Merge dry run 
  * run merge without ff and commits:   `git merge --no-commit -- no-ff <branch>`   --> git alias: `git mergedry`
  * examine the staged changes:         `git diff --cached`
  * undo the merge (even if ff)         `git merge --abort`
  

## LFS Git Large File Storage 
  1. `git lfs install`          Must be done only on first time using LFS
  2. `git lfs track "*.bin"`    Only with new files
  3. `git add .gitattributes`  only once
  4. After that, the `*.bin` file be added and updated like any other

## Multiple Remotes

  1. `git remote add foo git@github...` Add new Remote
  2. `git fetch --all`                  Get all remote branches
  3. `git checkout -b bar foo/bar`      Create local branch tracking remote foo/bar 
  4. `git branch -u foo/bar`            Existing branch: Track of current branch with remote
  


## SSH Keys
 * Generate SSH Key (Linux): `ssh-keygen -t rsa -C "jonas.purtschert@psi.ch"`
*

## Tricks

* Set git root directory:  `git --git-dir /foo/bar/.git log`
* loop through submodules: `git submodule foreach --quiet "git remote show origin"`
* Switch to new branch from a new remote: `git switch -c github-master --track github/master`
 

# Links 
 * https://chris.beams.io/posts/git-commit/
 * 

## Problems

### fetch doesnt get all branches

after a `shallow` clone, the remote might be wrong like:
```
$ git config --get remote.origin.fetch
+refs/heads/master:refs/remotes/origin/master
```

It should be `.../origin/*`.

Fix:
```
git remote rm origin
git remote add origin <git url>
```

A shallow clone with git `clone --depth <depth> <repo>` implies `--single-branch`, better do it with `git clone --depth <depth> --no-single-branch <repo>`



