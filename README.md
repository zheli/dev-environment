dev-environment
===============

My development environment bootstrap code using Vagrant, Salt and Docker. Right now it can either bootstrap it in virtualbox or digitalocean.

Use Digital Ocean
----------

If you are using digitalocean, you have to put your RSA keys in "keys" folder and name them id_rsa and id_rsa.pub. Make sure you set up the ssh key name, client id and api key in the Settings.rb file.

Then you can create a new droplet using:
    vagrant up --provider=digital_ocean
