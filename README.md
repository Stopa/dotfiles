This dotfiles setup is heavily based on [Dries Vints' dotfiles](https://github.com/driesvints/dotfiles). Read more about the original to get started with your own:

📖 - [Read the blog post](https://driesvints.com/blog/getting-started-with-dotfiles)  
📺 - [Watch the screencast on Laracasts](https://laracasts.com/series/guest-spotlight/episodes/1)  
💡 - [Learn how to build your own dotfiles](https://github.com/driesvints/dotfiles#your-own-dotfiles)

## Introduction

This repository holds most of the stuff I need to set up a new Mac. It makes setup much faster and less error-prone.

## A Fresh Setup

### Before you re-install

First, go through the checklist below to make sure you didn't forget anything before you wipe your hard drive.

- Did you commit and push any changes/branches to your git repositories?
- Did you remember to save all important non-cloud documents?
- Did you remember to export important data from your local database?

### Setting up your Mac

If you did all of the above you may now follow these install instructions to setup a new Mac.

1. Update macOS to the latest version with the App Store
2. [Generate a new public and private SSH key](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) by running:

   ```zsh
   curl https://raw.githubusercontent.com/stopa/dotfiles/HEAD/ssh.sh | sh -s "<your-email-address>"
   ```

3. Clone this repo to `~/.dotfiles` and go to the directory:

    ```zsh
    git clone --recursive git@github.com:stopa/dotfiles.git ~/.dotfiles && cd ~/.dotfiles
    ```

4. Run the installation with:

    ```zsh
    ./fresh.sh
    ```

5. Restart your computer to finalize the process

6. Have fun logging into all the apps! Firefox settings are synced through respective accounts. Webstorms settings are kept in the [Settings Repository](https://github.com/stopa/webstorm-settings)

Your Mac is now ready to use!

> 💡 You can use a different location than `~/.dotfiles` if you want. Make sure you also update the reference in the [`.zshrc`](./.zshrc#L2) file.

## What actually happens?

1. `oh-my-zsh` is [installed](./fresh.sh#L5), if missing
2. Homebrew is [installed](./fresh.sh#L10), if missing
3. `.zshrc` from this repo is [symlinked](./fresh.sh#L18) to the system one
4. A whole bunch of tools and applications are [installed](./fresh.sh#L25) from Homebrew (see the [Brewfile](./Brewfile))
5. Defaults MySQL password is [set](./fresh.sh#L29)
6. Some useful directories are [created](./fresh.sh#L32) and a bunch of git repos [cloned](./clone.sh) into them
7. Git config from this repo is [symlinked](./fresh.sh#L40) to the system one, global gitignore is applied
8. A whole bunch of macOS settings are [set](./fresh.sh#L47) (see [.macos file](./.macos))

> ❗ Some of the macos defaults seem to not be working, which I'll attribute to them being semi-secret menu items anyway.

## FAQ

### How do I add zsh plugins/themes?

Add the repository of the plugin/theme as a git sumodule under `.dotfiles/plugins` or `.dotfiles/themes`:

   ```zsh
   git submodule add <repository-url> plugins/<plugin-name>
   ```

And then modify `plugins` or `ZSH_THEME` acordingly in `.zshrc`.
