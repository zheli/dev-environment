#dev-environment
My development environment bootstrap code using Vagrant, Salt and Docker. Right now it can either bootstrap it in virtualbox or digitalocean.
##Use VirtualBox
It is very simple to bootstrap development environment via VirtualBox. Just create a new box using this command:
```
vagrant up
```
And then you can ssh into the box using
```
vagrant ssh
```
##Use Digital Ocean
If you are using digitalocean, you have to put your RSA keys in "keys" folder and name them id_rsa and id_rsa.pub. Make sure you set up the ssh key name, client id and api key in the Settings.rb file.
Then you can create a new droplet using:
```
vagrant up --provider=digital_ocean
```
After that, you can use it the same way like a VirtualBox machine.
##What's in it?
###tmux
With customized theme and binding keys.
![tmux](https://raw.githubusercontent.com/zheli/dev-environment/master/docs/images/tmux.png)
###vim
With [airline](https://github.com/bling/vim-airline), [ctrlp](https://github.com/kien/ctrlp.vim) and some other plugins.
![vim](https://raw.githubusercontent.com/zheli/dev-environment/master/docs/images/vim.png)
