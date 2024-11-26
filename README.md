Installation instructions

# 1. Install Determinate Nix
- `curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install`

# 2. Fork the flake for the development environment
- Docs on forking git repos : https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/fork-a-repo
- Download your fork to  your local machine

# 2 Update the values in the variables.nix file
- Open the variables.nix file
- Find all instances of the word "<username>"
- Replace "<username>" with your own username

# 3 Install the nix flake
- Run the command `nix shell nixpkgs#home-manager`
- Run the command `nix run home-manager -- switch --flake ./#dashboardDev`

# 4 Enable Dir Env
- Navigate to the directory with your dashboard installation
- Run the command `direnv allow` to enable the development environment
