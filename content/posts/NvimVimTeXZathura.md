+++
title = "Setting up Inverse Search with Neovim, VimTeX and Zathura"
date = 2021-12-05T16:49:56+01:00
description = "Simple explanation of how to set up inverse search with Neovim, VimTex, and Zathura."
tags = ["vim", "latex", "zathura"]
+++

**Note 06.01.2023: With the [release of VimTex 2.8](https://github.com/lervag/vimtex/releases/tag/v2.8), you probably don't need to do this any more. See `:help vimtex-synctex-inverse-search`.**

There are many reasons to write LaTeX in Vim instead of the more "traditional" LaTeX editors. Maybe you want to type long equations quickly with the help of [UltiSnips](https://github.com/sirver/UltiSnips), or you just want to make the most of Vim's many features. [VimTeX](https://github.com/lervag/vimtex) is a plugin for Vim (and Neovim) which allows for the easy authoring of LaTeX files using Vim, with useful features such as autocompilation, and [Zathura](https://pwmt.org/projects/zathura/) is a minimalist, highly customisable document viewer with Vim keybindings by default.

Setting up inverse search allows you to jump to a point in your `.tex` file by Ctrl-clicking the corresponding place in your `.pdf` file, which can be especially useful for long documents.

First, install [neovim-remote](https://github.com/mhinz/neovim-remote) using `pip3 install neovim-remote`.

You next need to set `NVIM_LISTEN_ADDRESS` to `/tmp/nvimsocket` by adding `export NVIM_LISTEN_ADDRESS=/tmp/nvimsocket` to your `~/.bashrc`, `~/.zshrc`, or whatever the config file is for your specific shell. This allows, after having started a Neovim instance, the running of commands from other terminal windows, e.g. running `nvr --remote file1` would open a file `file1` in the Neovim instance. (I think Zathura takes care of setting `NVIM_LISTEN_ADDRESS` for you, but there is no harm in doing this anyway, plus it may be necessary for other PDF viewers, should you want to switch.)

Now, ensure synctex is enabled. There are various ways to do this, but the way I do this is by adding `\synctex=1` to the preamble of the `.tex` document.

Add the following to your `~/.config/nvim/init.vim`:
```
let g:vimtex_view_method = 'zathura'
let g:latex_view_general_viewer = 'zathura'
let g:vimtex_compiler_progname = 'nvr'
```

Add the following to your `~/.config/zathura/zathurarc`:
```
set synctex true
set synctex-editor-command "nvr --remote-silent +%{line} %{input}"
```

After this, you should be able to Ctrl-Click on a part of the file in Zathura, and Neovim will go to that point in the `.tex` file.

**Note that this will only work after a change has been made to the file, i.e. it won't work if you just open the file and try to reverse search; you need to make a change and save it first.**
