# Installing new versions

- This assumes you do not have RBENV installed, nor Ruby, nor Rails installed on your machine.
- If you have the correct version of Ruby, but the wrong version of Rails skip to [this section](#installing-a-version-of-rails)
- If you have the correct version of Rails, but the wrong version of Ruby skip to [this section](#install-a-version-of-ruby-with-rbenv)
- If you have neither the version of Ruby, nor Rails, read all of this
- If you use something other than RBENV, you'll have to make the necessary adjustments on your own, or contribute to these docs with a PR!

# It all starts with being organized....

Ruby is a programming language. Just like other languages, it's constantly changing. (Yes, even spoken languages are changing constantly).

So while Ruby itself is a programming language, there are _versions_ of the language that can be used.

This project uses a specific version of Ruby. Just go check the Gemfile, and you'll see.

```rb
# Gemfile
source "https://rubygems.org"

ruby "3.2.4"
# 3.2.4 is an example of the version being specified
```

Since Ruby is the programming language this project uses, we need to make sure we're currently using the correct version on your machine before trying to open this project locally. 

We'll be using a tool that's specifically made for managing all the different versions you may ever need. It's called [RBENV](https://github.com/rbenv/rbenv).

Feel free to learn all you want about it. To make it simple, we're going to simply tell you how to get RBENV on your machine.

To get RBENV on your computer, we'll be using another tool called "Homebrew". First, let's make sure you have Homebrew on your machine.

In the terminal, run:

```bash
brew help
```

If Homebrew is installed, you'll see something like:

```
Example usage:
  brew search TEXT|/REGEX/
  brew info [FORMULA|CASK...]
  brew install FORMULA|CASK...
  brew update
  brew upgrade [FORMULA|CASK...]
  brew uninstall FORMULA|CASK...
  brew list [FORMULA|CASK...]

Troubleshooting:
  brew config
  brew doctor
  brew install --verbose --debug FORMULA|CASK

Contributing:
  brew create URL [--no-fetch]
  brew edit [FORMULA|CASK...]

Further help:
  brew commands
  brew help [COMMAND]
  man brew
  https://docs.brew.sh
```

If you don't have Homebrew installed, you can find instructions to [install it here](https://brew.sh/), or create an issue asking to add that documentation! Or open a PR that does add that documentation!

# Installing RBENV

To install RBENV using Homebrew, go to your terminal, and run `cd` to get into the home directory.

Run this command:

```bash
brew install rbenv
```

After that's done (give it a little bit of time....a couple of seconds), we now have RBENV on our machine.

Let's prepare the entire machine to use RBENV by running the following command

```bash
rbenv init
```

Since we're making changes to the entire machine, we'll need to RESTART THE TERMINAL now, before doing anything else.

# Install a version of Ruby with RBENV

We can now use the `rbenv` command in the terminal.

To make sure it works, run `rbenv help`; You should see some output that looks helpful.

To install a version of Ruby needed for this project run:

```bash
rbenv install <version-number-here>

# instead of <version-number-here> type 3.2.4, or 3.3.3, or 1.9.0, or whatever; no quotes needed
```

After a couple of minutes your machine will now have that version of Ruby installed.

Next, tell your machine to use that version of Ruby everywhere on your machine:


```bash
rbenv global <version-number-here>

# this makes the default version of Ruby on your machine the same version you added
```

Congrats! You now have the correct Ruby version.

# Installing a version of Rails

Once you have a single version of Ruby, it's time to add Rails.

For every version of Ruby, you'll need another copy of Rails.

So if I have Ruby 2.7.4, I'll also need a copy of Rails.

I can have version Rails 5.1, 6.1 or 7.1.x, etc.

If I get a new version of Ruby, i'd need another copy of Rails 5.1, 6.1, 7.1.x, etc.

To install a specific version of Rails, there's nothing fancy to do. No other software etc. We're just calling it from the command line (home directory, if you're not already there).

```bash
gem install rails

# to get the latest version
```

if you want a specific version of rails:

```bash
gem install rails --version=3.2.18

# or whatever version you're after
```