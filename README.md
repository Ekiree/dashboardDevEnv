Installation instructions

# 1. Install Determinate Nix
- `curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install`

# 2. Download the flake for the development environment
- run the command `git clone https://github.com/Ekiree/dashboardDevEnv.git`

# 2 Update the values in the home.nix file
- Open the home.nix file
- Find all instances of the word "test"
- Replace "test" with  your own user name

# 3 Install the nix flake

- run the command `nix shell nixpkgs#home-manager`
- run the command `nix run home-manager -- switch --flake ./#dashboardDev`

# 4 Enable Dir Env
- navigate to the directory with your dashboard installation
- run the command `direnv allow` to enable the development environment
