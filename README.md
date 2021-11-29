# BioBB CWL tutorial template

CWL Template for the [BioBB CWL tutorial](https://biobb-wf-cwl-tutorial.readthedocs.io/en/latest/).

This template contains the scripts used in the tutorial, setup to be used immeadiately. It also
contains instructions for installing the BioBB libraries locally (and adapting the scripts to use
these) if you wish to do this.

Before using these scripts you will need to install [docker](https://www.docker.com/) and [cwl-tools](https://github.com/common-workflow-language/cwltool).
Instructions for installing both of these are available via their websites.

#### Basic Usage

To make for an easy introduction to using the BioBB libraries we have linked directly to
these within the example scripts in this repository. To use these scripts you can directly
download a copy of the repository:

1. Click the `Code` button at the top of this page, and select `Download ZIP`.
2. Download the zip archive, then extract the contents into a new directory.
3. Navigate to that directory using your terminal.

For basic usage of this code you will not need to make use of the `.gitmodules` file or
`biobb` directory, so these can be ignored for now.

 
#### Advanced Usage

This template can also be used to create a new git repository - in which you can install
the BioBB libraries using `git submodules`. The steps to do this are:

1. Click the `Use this template` button, and create a new repository as you would usually
   * Before the next step you can, if you wish, copy this repository to a different git service (such as [gitlab](https://gitlab.com/)).  
2. Clone the repository locally, using `git clone [template address]` (the `[template address]` can be got from the `Code` button at the top of the page)
3. Follow the instructions in the `README-local_biobb_submodules.md` file for setting up and using local Biobb libraries.

