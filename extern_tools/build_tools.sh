# -----------------------------------------------------------------------------------------
# Get all extern tools and binaries
# -----------------------------------------------------------------------------------------

# Get nu shell
wget https://github.com/nushell/nushell/releases/download/0.80.0/nu-0.80.0-x86_64-unknown-linux-musl.tar.gz -qO - | sudo tar -xz nu-0.80.0-x86_64-unknown-linux-musl
cp nu-0.80.0-x86_64-unknown-linux-musl/nu ../OS/initrd/bin/nu
sudo rm -R nu-0.80.0-x86_64-unknown-linux-musl

# Get cat clone with wings
wget https://github.com/sharkdp/bat/releases/download/v0.23.0/bat-v0.23.0-x86_64-unknown-linux-musl.tar.gz -qO - | sudo tar -xz bat-v0.23.0-x86_64-unknown-linux-musl 
cp bat-v0.23.0-x86_64-unknown-linux-musl/bat ../OS/initrd/bin/bat
sudo rm -R bat-v0.23.0-x86_64-unknown-linux-musl

# Get bottom utility
wget https://github.com/ClementTsang/bottom/releases/download/0.9.1/bottom_x86_64-unknown-linux-musl.tar.gz -qO - | sudo tar -xz -C ../OS/initrd/bin btm

# Get exa utility
wget https://github.com/ogham/exa/releases/download/v0.10.1/exa-linux-x86_64-musl-v0.10.1.zip
sudo unzip -j exa-linux-x86_64-musl-v0.10.1.zip bin/exa && cp exa ../OS/initrd/bin/exa
sudo rm exa-linux-x86_64-musl-v0.10.1.zip exa

# Get xh command utility
wget https://github.com/ducaale/xh/releases/download/v0.18.0/xh-v0.18.0-x86_64-unknown-linux-musl.tar.gz -qO - | sudo tar -xz xh-v0.18.0-x86_64-unknown-linux-musl
cp xh-v0.18.0-x86_64-unknown-linux-musl/xh ../OS/initrd/bin/xh
sudo rm -R xh-v0.18.0-x86_64-unknown-linux-musl

# Get ox text editor
wget https://github.com/curlpipe/ox/releases/download/0.2.7/ox -qO ../OS/initrd/bin/ox

# Get erdtree
wget https://github.com/solidiquis/erdtree/releases/download/v3.0.1/erd-v3.0.1-x86_64-unknown-linux-musl.tar.gz -qO - | sudo tar -xz -C ../OS/initrd/bin erd 

# Get dive docker utility
wget https://github.com/wagoodman/dive/releases/download/v0.10.0/dive_0.10.0_linux_amd64.tar.gz -qO - | sudo tar -xz -C ../OS/initrd/bin dive 

