#dev-environment
My development environment bootstrap code using Vagrant and Salt.

##Prerequisites
You will need fabric.

##Use VirtualBox
It is very simple to bootstrap development environment via VirtualBox. First make sure you have a RSA pubkey in your .ssh folder, then
 just create a new box using this command:
```
vagrant up && ./bootstrap.sh 127.0.0.1:[mapped ssh port] vagrant
```
And then you can ssh into the box using
```
vagrant ssh
```

##Use on a remote host
```
./bootstrap.sh [remote ip] root
```

##What's in it?
###tmux
With customized theme and binding keys.
![tmux](https://raw.githubusercontent.com/zheli/dev-environment/master/docs/images/tmux.png)
###vim
With [airline](https://github.com/bling/vim-airline), [ctrlp](https://github.com/kien/ctrlp.vim) and some other plugins.
![vim](https://raw.githubusercontent.com/zheli/dev-environment/master/docs/images/vim.png)
