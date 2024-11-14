{
  config,
  pkgs,
  ...
}: {
  # Configure home-manager
  home = {
    username = "test";
    homeDirectory = "/home/test";

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

  # enabple experimental features like flakes and nix command
  home.file.".config/nix/nix.conf".text = ''
    experimental-features = nix-command flakes
  '';

  # The state version is required and should stay at the version you
  # originally installed.
  home.stateVersion = "24.05";
}
