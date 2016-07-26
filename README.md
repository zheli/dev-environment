#dev-environment
Bootstrap a remote development environment using SaltStack and Fabric.

##Prerequisites
You need to install Fabric to be able to run the bootstrap.sh script. I recommend run the following command inside a virutalenv:

```pip install Fabric```

You also need to have a ```id_ras.key``` file inside your ```~/.ssh``` folder, because the script will add that public key to the ```authorized_keys``` file on the remote computer.

##Create a dev environment inside a virtualbox
We can use Vagrant to create a new virtualbox instance and then bootstrap it using Fabric command. Make sure you have Vagrant installed. Then simply run:

```vagrant up```

to get a new virtualbox instance. After that bootstrap your new environment with this command:

```
./bootstrap.sh 127.0.0.1:[mapped ssh port] vagrant
```

##Use on a remote host
```
./bootstrap.sh [remote ip] root
```

##What's in it?
###tmux
With solarized theme and binding keys.
![tmux](https://raw.githubusercontent.com/zheli/dev-environment/master/docs/images/tmux.png)
###vim
With [airline](https://github.com/bling/vim-airline), [ctrlp](https://github.com/kien/ctrlp.vim) and some other goodies.
![vim](https://raw.githubusercontent.com/zheli/dev-environment/master/docs/images/vim.png)

##TODO
* Upgrade tmux to 1.9 automatically
* Install zshell
* Add instructions to setup putty with correct colors
* Setup YouCompleteMe automatically
