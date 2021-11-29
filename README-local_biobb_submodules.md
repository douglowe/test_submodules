# BioBB CWL Libraries

These instructions are for setting up local biobb libraries using `git submodules`. They
require that you have some experience of using `git` for version control - if you don't,
or require a refresher, then we recommend working through the Software Carpentry course
on using git first (see links at the end of the document).

Make sure that you've followed the `Advanced Usage` instructions in `README.md` before 
following these instructions.


#### Setting Up Git Submodules

Git submodules enable you to load one git repository within another repository, so that the
code within the first repository can be accessed by code in the second repository.

Although the submodule links to the BioBB libraries are already in this template, they will not be 
copied to your new repository, due to current limitations on github's support for submodules and
templates. You will have to recreate this link yourself, following the instructions in step 3 below.

1. Within the repository directory that you downloaded you will have to initiate the submodule link:
   * `git submodule add --name biobb https://github.com/bioexcel/biobb_adapters biobb` 
2. Save these changes to your repository, and push them back to your repository on github/gitlab:
   * `git commit`
   * `git push`


#### Using the Local Libraries

You now need to change your CWL workflows to use the local, rather than remote, libraries.
To do this open the `.cwl` script file in a text editor, and replace all instances of 
`https://raw.githubusercontent.com/bioexcel/biobb_adapters/v0.1.4/` with `biobb/`.
Once these changes are made you can commit the new code to git, and 

#### Working with your new repository

Following the steps above will initialise your new repository, and you will be able to work with CWL.
If you wish to download your repository again anywhere else, follow the steps below to initialise the
BioBB submodules:

1. Clone the repository to the machine you want to use it on.
   * `git clone [template address]`
2. Within the repository directory, initialise the submodules, which downloads the required submodules to the machine.
   * `git submodule update --init`


#### Further Reading

1. [Git Submodule Guide](https://www.git-scm.com/book/en/v2/Git-Tools-Submodules)
2. [Software Carpentry Git Introduction](https://swcarpentry.github.io/git-novice/)
