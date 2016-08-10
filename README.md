#dev-environment
Bootstrap a remote development environment using SaltStack and Fabric.

##Prerequisites
You need to install Fabric to be able to run the bootstrap.sh script. I recommend run the following command inside a virutalenv:

```pip install Fabric```

##Configuration
By default it will create a new user ```zhe``` in the provisioned machine. You can fork the project and change the user settings in file ```salt/roots/pillar/users.sls```

You need to add your public key to salt/roots/salt/keys folder and name it to key.pub.

##Create a dev environment inside a virtualbox
We can use Vagrant to create a new virtualbox instance and then bootstrap it using Fabric command. Make sure you have Vagrant installed. Then simply run:

```vagrant up```

to get a new virtualbox instance. It will also append ```id_ras.key``` file inside your ```~/.ssh``` folder to ```authorized_keys``` file in the in virtualbox instance.

After that bootstrap your new environment with this command:

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
* ```ctrl+b, s``` split window vertically
* ```ctrl+b, v``` split window horizontally

![tmux](https://raw.githubusercontent.com/zheli/dev-environment/master/docs/images/tmux.png)
###vim
With [airline](https://github.com/bling/vim-airline), [ctrlp](https://github.com/kien/ctrlp.vim) and some other goodies.
![vim](https://raw.githubusercontent.com/zheli/dev-environment/master/docs/images/vim.png)

##TODO
* ~~Upgrade tmux to 2.0 automatically~~
* Install zshell
* Add instructions to setup putty with correct colors
* Setup YouCompleteMe automatically
