ERLANG_OTP_VERSION=21.1
ELIXIR_VERSION=1.7.4

brew install autoconf
brew install wxmac

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.6.0

echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bash_profile
echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bash_profile

source ~/.bash_profile

asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git
asdf install erlang ${ERLANG_OTP_VERSION}

asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git

asdf install elixir ${ELIXIR_VERSION}

asdf global erlang ${ERLANG_OTP_VERSION}
asdf global elixir ${ELIXIR_VERSION}
