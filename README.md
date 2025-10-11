This will be a collection of configuration/dotfiles for the applications I use on the daily.

My initial plan is to clone this and have some kind of script that symlinks everything to the proper place
on the host. Yeah, thats kind of hacky. Perhaps theres a way I can modify an env variable or something. 

I'd like to keep this as dependency free as possible. 

## Vim Stuff
- Vim stuff will be in `config/.vim` and then the plan is to symlink `~/.vim` to `~/dotfiles/config/.vim`
once this repo is cloned to the host. Then, plugins will be installed as git submodules and managed by
vim packages. The only thing I am worried about is the symlink, im not sure how vim will play with that. 
