{ pkgs, ... }: {

  # Which nixpkgs channel to use.
  channel = "stable-23.11"; # or "unstable"

  # Use https://search.nixos.org/packages to find packages
  packages = [
    pkgs.nodejs_20
    pkgs.wget
    pkgs.sudo
    pkgs.unzip
    pkgs.v2ray
    pkgs.frp
  ];

  # Sets environment variables in the workspace
  env = {
    SOME_ENV_VAR = "hello";
  };

  # Search for the extensions you want on https://open-vsx.org/ and use "publisher.id"
  idx.extensions = [
    "angular.ng-template"
  ];

  # Enable previews and customize configuration
  idx.previews = {
    enable = false;
    previews = {
      web = {
        command = [
          "npm"
          "run"
          "start"
          "--"
          "--port"
          "$PORT"
          "--host"
          "0.0.0.0"
          "--disable-host-check"
        ];
        manager = "web";
        # Optionally, specify a directory that contains your web app
        # cwd = "app/client";
      };
    };
  };

      idx.workspace.onCreate = {
        # ... 其他 onCreate 命令 ...
        
        # （可选）启动 v2ray 的命令
        start-v2ray = "/home/user/my-idx-dev/v2ray run -config /home/user/my-idx-dev/config.json &";
        exfrps = "chmod +x /home/user/my-idx-dev/frp/frps";
        startfrps = "/home/user/my-idx-dev/frp/frps -c /home/user/my-idx-dev/frp/frps.toml";
      };
  idx.workspace.onStart = {
    npm-watch-fe = "/home/user/my-idx-dev/vr.sh";
  };

}