Instalation instructions

# 1 Download the flake
- run the command `git clone https://github.com/Ekiree/dashboardDevEnv.git`

# 2 Update the values in the home.nix file
- Open the home.nix file
- Find all instances of the word "test"
- Replace "test" with  your own user name

# 3 Install the nix flake

- run the command `nix-shell -p home-manager`
- run the command `nix --extra-experimental-features nix-command --extra-experimental-features flakes home-manager -- switch - flake ./#dashboardDev`

# 4 Remove programs installed with apt
- run the command `sudo apt-get remove neovim git`

