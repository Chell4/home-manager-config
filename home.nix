{ pkgs
,
... }:

{
  home.username = "chell";
  home.homeDirectory = "/home/chell";

  home.stateVersion = "23.05";

  home.packages = with pkgs; [
    brave
    discord
    dmenu
    docker
    droidcam
    element-desktop
    evince
    firefox
    gimp
    htop
    jetbrains.idea-community
    kitty
    krita
    libreoffice
    obs-studio
    obsidian
    openshot-qt
    qbittorrent
    scrot
    telegram-desktop
    todoist-electron
    vlc
    xorg.libXcomposite
  ];

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };
  
  xdg.mimeApps.defaultApplications = {
    
  };

  home.file = {
    
  };

  # You can also manage environment variables but you will have to manually
  # source
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/chell/etc/profile.d/hm-session-vars.sh
  #
  # if you don't want to manage your shell through Home Manager.
  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.home-manager.enable = true;
}
