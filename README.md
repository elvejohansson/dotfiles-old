# Dotfiles
A bare git repository for managing my dotfiles and for easily setting up a new GNU/Linux based system.

Based on [this](https://www.atlassian.com/git/tutorials/dotfiles) article uploaded to [Atlassian](https://www.atlassian.com/).

### Want to use these on your system?
This takes some general technical knowledge about Linux, the Linux filesystem, git and shell scripts. [The article](https://www.atlassian.com/git/tutorials/dotfiles) goes in to more detail so read it if you want the full explanation.

1. Add this alias to your `.bashrc` or `.zshrc`: `alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'` (Used to manage the repo as it will be bare).
2. `echo ".dotfiles" >> .gitignore`. (For avoiding recursion).
3. `git clone --bare https://github.com/elvejohansson/dotfiles.git $HOME/.dotfiles`.
4. `alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'`
5. `config checkout` for checking out to your `$HOME` directory.
6. `config config --local status.showUntrackedFiles no`

#### If this fails because of conflicting files:
```
mkdir -p .config-backup && \
config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config-backup/{}
```
- Rerun `config checkout`
- `config config --local status.showUntrackedFiles no`

**Done!**
