Vim Configuration
=================

Personal Vim/Neovim configuration for Linux kernel development and systems
programming (C/C++, Rust, Go, Python), using [Coc.nvim](https://github.com/neoclide/coc.nvim) for LSP support.

Features
--------

* Kernel coding style enforcement
* Elixir bootlin.com integration for source lookup
* Auto-formatting for Python (black) and Rust (rustfmt)
* GNU Global/cscope integration for tag navigation

Requirements
------------

* **Node.js**: Required for Coc.nvim
* **GNU Global (gtags)**: For kernel source navigation
* **clangd**: For C/C++ LSP support
* **black**, **rustfmt**: For code formatting
* **uv**: For Python tool installation

Setup
-----

```bash
cd ~
git clone https://github.com/walac/vimfiles .vim
ln -s .vim/vimrc .vimrc
cd .vim
./bootstrap.sh
```

> **Note:** `bootstrap.sh` runs `CocInstall` which may not wait to complete.
> Run `:CocList extensions` in vim to verify installation.

Customization
-------------

To customize the plugin list, edit `bundles.vim`.

For machine-specific settings, create `~/.vimrc.local` (automatically loaded if present).

