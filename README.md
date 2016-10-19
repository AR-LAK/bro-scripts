# bro-scripts

This repository contains Bro scripts for anyone to use. All of the scripts have been checked and should be in working order. Currently the repository is organized in three different directories.

### community

The community dir contains submodule links to various different repositories that host Bro scripts. Almost all of the scripts found in this repo have been taken from those repos.


### packages

Bro recently released its own package package manager. This dir contain the package indexes needed for the bro-pkg to search the packages.

### scripts

The scripts dir contains the actual Bro scripts. Each script/set of scripts contains also a `bro-pkg.meta` file that is need by the Bro package manager to identify the package.


#### The package manager 101

Currently the Bro package manager needs one repository that contains the package index files. These are the ones you can find in the **packages** dir. Secondly right now the packages need each to be hosted in its own repo. This is because of the current design choice to keep track of versioning via Git tags. **All of the packages are linked to package repos right now so you can use this repo as the index repo** Optionally if you wish to host everything yourself you can do the following:

1. Create a new repository and add the **packages** dir in it

2. Select the packages you want to use and create a seperate repository for each and every one of them and copy the contents of the corresponding directory there

3. Modify the `bro-pkg.index` files in your packages repository and point the URL to the repository you created for the corresponding package

4. Create your custom [config](http://bro-package-manager.readthedocs.io/en/stable/bro-pkg.html#config-file) file for the Bro package manager and point it to look for the packages in your **packages** repo

For more information about how to use the package manager check out this [quickstart](http://blog.bro.org/2016/10/introducing-bro-package-manager.html) guide by Bro.