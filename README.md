# Introduction

A z-plugin (i.e. a plugin for the [Zplugin](https://github.com/zdharma/zplugin) –
[more information](https://github.com/zdharma/zplugin/doc/Z-PLUGINS.adoc)) that
allows Zpluugin to clone submodules when installing a plugin or snippet.

It adds `submods''` ice to Zplugin which has the following syntax:

```zsh
submods'{user}/{plugin} -> {output directory}; ...'
```

An example command utilizing the z-plugin and its ice:

```zsh
# Load the zsh-autosuggestions plugin via Prezto module autosuggestions
zplugin ice svn submods'zsh-users/zsh-autosuggestions -> external'
zplugin snippet PZT::modules/autosuggestions
```

![screenshot](https://raw.githubusercontent.com/zdharma/z-p-submods/master/images/screenshot.png)

# Installation

Simply load as a plugin. This will install the z-plugin within Zplugin:

```zsh
zplugin light zdharma/z-p-submods
```

After this you can use the `submods''` ice.
<!-- vim:tw=85
-->
