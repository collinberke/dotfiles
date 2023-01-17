# Background

The following document overviews the setup of the terminal environment.

# Download Homebrew

Install the [Homebrew](https://brew.sh/) package manager. This can be done by running the following in a terminal window:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

# Install iTerm2

Run the following code chunk in a terminal window to install [iTerm2](https://iterm2.com/). Once installed, all further terminal activity will be done using iTerm2.

```bash
brew install --cask iterm2
```

Any further steps done in a terminal will be done using `iTerm2`.

# Install Oh My Zsh

Run the following code chunk in a terminal window to install [Oh My Zsh](https://ohmyz.sh/). 

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Use the following `.zshrc` for the config. Place this configuration file in the home directory of the machine. 

# Configure zsh

# Define terminal aliases

Move the `terminal/aliases.zsh` file in the repo to the `~/oh-my-zsh/custom/` directory. Modify aliases to specific workflow.

# Download additional terminal utilities

This can be done by running the `terminal/brew.sh` file. You'll need to ensure the file is executable first by running `chmod u+x brew.sh` before running. Then run the file by calling it in the terminal `./brew.sh`.

This file will download and install the following utilities:
* iTerm2 
* Jump
* tmux
* GitHub command line tool
* rig for R environment management
* R Studio
* Google Cloud SDK
* Neovim text editor
