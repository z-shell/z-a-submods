# Introduction

A z-plugin (i.e. a plugin for the [Zplugin](https://github.com/zdharma/zplugin)) that
allows Zpluugin to clone submodules when installing a plugin or snippet.

It adds `submod''` ice to Zplugin with a following syntax:

```zsh
submod'{user}/{plugin} -> {output directory}; ...'
```

So the example command using the z-plugin and its ice is e.g.

```zsh
# Load the zsh-autosuggestions plugin via Prezto module autosuggestions
zplugin ice svn submod'zsh-users/zsh-autosuggestions -> external'
zplugin snippet PZT::modules/autosuggestions
```

# Installation

Simply load as a plugin. This will install the z-plugin within Zplugin:

```zsh
zplugin light zdharma/z-p-submods
```

<!-- vim:tw=85
-->
