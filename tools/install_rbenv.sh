#!/bin/zsh

echo "Starting rbenv installation..."

sudo apt update && sudo apt upgrade -y

sudo apt install -y git curl libssl-dev libreadline-dev zlib1g-dev \
    autoconf bison build-essential libyaml-dev libreadline-dev \
    libncurses5-dev libffi-dev libgdbm-dev

if [ ! -d ~/.rbenv ]; then
    git clone https://github.com/rbenv/rbenv.git ~/.rbenv
else
    echo "rbenv is already installed"
fi

# PATH
if ! grep -q 'rbenv init' ~/.zshrc; then
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
    echo 'eval "$(rbenv init - zsh)"' >> ~/.zshrc
fi

# ruby-build
if [ ! -d ~/.rbenv/plugins/ruby-build ]; then
    git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
else
    echo "ruby-build is already installed"
fi

source ~/.zshrc

# Install latest Ruby
latest_ruby=$(rbenv install -l | grep -v - | tail -1)
echo "Installing Ruby version: $latest_ruby"
rbenv install $latest_ruby
rbenv global $latest_ruby

echo "Checking Ruby installation..."
ruby -v

echo "Installation completed!"
