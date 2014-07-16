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
