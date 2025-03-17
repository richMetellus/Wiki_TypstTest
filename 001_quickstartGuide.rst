Typst Getting Started 
#######################

:Date: 03/17/2025 
:last updated: 03/17/2025 

**Context**

After exploring mystmd.org, I looked at `Typst <https://typst.app>`_ and created 
an account to experiment with the free community version.

I was able to install the program and create a project locally.

Steps
******

1. Install Typst for windows: ``winget install --id Typst.Typst``
   
   .. code-block:: console 
      
      C:\Users\ricky>winget install --id Typst.Typst
      Found Typst [Typst.Typst] Version 0.13.1
      This application is licensed to you by its owner.
      Microsoft is not responsible for, nor does it grant any licenses to, third-party packages.
      This package requires the following dependencies:
        - Packages
            Microsoft.VCRedist.2015+.x64
      Downloading https://github.com/typst/typst/releases/download/v0.13.1/typst-x86_64-pc-windows-msvc.zip
        ██████████████████████████████  16.4 MB / 16.4 MB
      Successfully verified installer hash
      Extracting archive...
      Successfully extracted archive
      Starting package install...
      Command line alias added: "typst"
      Successfully installed
      
      PS C:\Users\ricky> typst --version
      typst 0.13.1 (8ace67d9)
      PS C:\Users\ricky>
      
#. Check the option offers by the command line 
   
   .. code-block:: console 
      
      C:\Users\ricky\Workspace-loc\Repos\Pers\doc_TypstTest>typst help
      Typst 0.13.1 (8ace67d9)
      
      Usage: typst [OPTIONS] <COMMAND>
      
      Commands:
        compile  Compiles an input file into a supported output format [aliases: c]
        watch    Watches an input file and recompiles on changes [aliases: w]
        init     Initializes a new project from a template
        query    Processes an input file to extract provided metadata
        fonts    Lists all discovered fonts in system and custom font paths
        update   Self update the Typst CLI
        help     Print this message or the help of the given subcommand(s)
      
      Options:
            --color <COLOR>  Whether to use color. When set to `auto` if the terminal
                             to supports it [default: auto] [possible values: auto,
                             always, never]
            --cert <CERT>    Path to a custom CA certificate to use when making
                             network requests [env: TYPST_CERT=]
        -h, --help           Print help
        -V, --version        Print version
      
      Resources:
        Tutorial:                 https://typst.app/docs/tutorial/
        Reference documentation:  https://typst.app/docs/reference/
        Templates & Packages:     https://typst.app/universe/
        Forum for questions:      https://forum.typst.app/

#. Init a workspace 
   
   .. code-block:: console 
      
      C:\Users\ricky\Workspace-loc\Repos\Pers\doc_TypstTest>typst init @preview/charged-ieee
      downloading @preview/charged-ieee:0.1.3
        6.2 KiB /   6.2 KiB (100 %)   6.2 KiB/s in 14.8 µs ETA: 0 s
      
      Successfully created new project from @preview/charged-ieee:0.1.3 🎉
      To start writing, run:
      > cd charged-ieee
      > typst watch main.typ

#. compile to pdf 
   
   .. code-block:: console 
      
      C:\Users\ricky\Workspace-loc\Repos\Pers\doc_TypstTest\charged-ieee>typst watch --port 3008 --root . TestingTypst.typ
      watching TestingTypst.typ
      writing to TestingTypst.pdf
      
      [16:44:03] compiling ...
      watching TestingTypst.typ
      writing to TestingTypst.pdf
      
      [16:44:03] compiled with warnings in 12.05 ms
      
      warning: unknown font family: clicker script
         ┌─ \\?\C:\Users\ricky\Workspace-loc\Repos\Pers\doc_TypstTest\charged-ieee\TestingTypst.typ:15:16
         │
      15 │ #set text(font: "Clicker Script")
         │                 ^^^^^^^^^^^^^^^^
      
      warning: unknown font family: roboto
         ┌─ \\?\C:\Users\ricky\Workspace-loc\Repos\Pers\doc_TypstTest\charged-ieee\TestingTypst.typ:19:16
         │
      19 │ #set text(font: "Roboto")
         │                 ^^^^^^^^
      
      warning: unknown font family: clicker script
         ┌─ \\?\C:\Users\ricky\Workspace-loc\Repos\Pers\doc_TypstTest\charged-ieee\TestingTypst.typ:21:16
         │
      21 │ #set text(font: "Clicker Script")
         │                 ^^^^^^^^^^^^^^^^
      
      warning: unknown font family: roboto
         ┌─ \\?\C:\Users\ricky\Workspace-loc\Repos\Pers\doc_TypstTest\charged-ieee\TestingTypst.typ:24:16
         │
      24 │ #set text(font: "Roboto")
         │                 ^^^^^^^^
      
      ^C
      
#. compile to html 
   
   .. literalinclude:: ./001_quickstartGuide.rst
      :lines: 313-480
