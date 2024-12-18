{pkgs, ...}: let
  userConfig = import ./variables.nix;
in {
  # Configure home-manager
  home = {
    username = userConfig.user.username;
    homeDirectory = userConfig.user.hostname;

    # Install packages with home-manager
    packages = with pkgs; [
      # Git managment tool : https://github.com/jesseduffield/lazygit
      lazygit

      # Terminal multiplexer
      tmux

      # Dev tools you should be familiar with
      neovim
      git
    ];
  };

  # Docs: https://nixos.asia/en/direnv
  # run the command `direnv allow` to enable dev environments
  programs = {
    bash.enable = true;
    direnv = {
      enable = true;
      nix-direnv.enable = true;
    };
  };

  # enabple experimental features like flakes and nix command
  home.file.".config/nix/nix.conf".text = ''
    experimental-features = nix-command flakes
  '';

  # The state version is required and should stay at the version you
  # originally installed.
  home.stateVersion = "24.05";
}
