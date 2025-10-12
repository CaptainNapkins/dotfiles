This will be a collection of configuration/dotfiles and plugins for the applications I use 
on the daily.

My initial plan is to clone this and have some kind of script that symlinks everything to the proper place
on the host. Yeah, thats kind of hacky. But so far this isn't that complex and for my use case
it'll do just fine.

I'd like to keep this as dependency free as possible. 

## Vim Stuff
- Vim stuff will be in `config/vim` and then running `prep_env.sh` will symlink `~/.vim` to `dotfiles/config/vim` once this repo is cloned to the host. Then, plugins will be downloaded as 
git submodules and managed natively by the vim package manager. 

## Other Stuff
TBD

Inspired by [Greg Hurnell](https://www.youtube.com/watch?v=X2_R3uxDN6g)
