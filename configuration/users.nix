{ config, pkgs, ... }:
{
    # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.cici = {
        isNormalUser = true;
        description = "cici";
        extraGroups = [ "networkmanager" "wheel" ];
        packages = with pkgs; [
            kdePackages.kate
            #  thunderbird
        ];
    };
}