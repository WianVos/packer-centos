packer-centos
=============

Building CentOS box with Packer


how
===

1. Install Packer - 
   http://www.packer.io/intro/getting-started/setup.html
2. Customize .json files
3. Remove comments in .json files using [jsmin](https://github.com/douglascrockford/JSMin): 
   `jsmin < my.json > template.json`
4. Run: 
   `packer build template.json`

Vagrant Up
----------

1. Add .box to Vagrant: `vagrant box add my-box /path/to/the/new.box`
2. Create Vagrantfile: `vagrant init my-box`
3. Edit Vagrantfile: 

   For AWS, add these settings:
   ```
   config.vm.provider :aws do |aws, override|
      aws.access_key_id = ""
      aws.secret_access_key = ""
      aws.ami = ""
      aws.instance_type = "t1.micro"
      aws.region = "us-west-1"
   end
   ```
4. `vagrant up [--provider aws]`
5. `vagrant ssh` your way.
