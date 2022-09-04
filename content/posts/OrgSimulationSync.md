+++
title = "Managing an Ever-Changing File Structure with Org Mode as a Lab Notebook"
date = 2022-06-02T13:15:46+02:00
description = "Hacking Emacs Org Mode to maintain links even with a changing file structure."
tags = ["org mode", "productivity"]
draft = true
+++

Emacs is often described as a text editor, but it is more than that. Personally, I do not generally use Emacs as a code editor (at time of writing, I tend to use Vim and Visual Studio Code), but I instead use it for its [Org Mode](https://orgmode.org/). This post is not, however, an evangelisation of Org Mode (many other people have done a much better job at this than I could do, see e.g. [here](https://www.youtube.com/watch?v=SzA2YODtgK4) and [here](https://www.youtube.com/watch?v=Ea_-TaEGa7Y)), but rather a description of how I solved an issue I had relating to hyperlinking to simulation data when writing Org Mode documents.
<!--more-->


### Emacs as a Lab Notebook

Anyone with experience in academia would be able to tell you the importance of keeping a well-maintained set of notes about what you have done, and the results that came from them. This takes the pain out of writing up a thesis or paper using results from experiments that you ran months, or even years, ago, in that you don't have to comb through mountains of data to figure out what you did and why you did it. The system that I have been using for note-taking for the past year-and-a-half has been Emacs Org Mode. I played around with other pieces of software, including the popular [eLabFTW](https://www.elabftw.net/), but I didn't feel like any of them really fulfilled my needs as Org Mode did. My requirements were:

- Free open source
- Ability to link to external files in their original location (so that I don't have to duplicate gigabytes of data)
- Easily scriptable and extendable (so preferably a command line tool rather than a GUI), potentially with support for migration to another program in the future
- \\(\LaTeX\\) support
- A system for managing a to-do list, with support for scheduling and deadlines

I eventually stumbled on Emacs Org Mode. As I have been a Vim user for several years, I decided to install [Doom Emacs](https://github.com/doomemacs/doomemacs), which has Vim emulation by default, using [Evil](https://github.com/emacs-evil/evil). It also looks good out of the box, so that's another plus.


### A Common Problem

Describe problem of simulation directories gradually getting messier.
