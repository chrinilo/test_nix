{ pkgs, ... }:
{
	environment.systemPackages = with pkgs; [
		kitty	

		# hyprland ecosystem
		hyprlock
		hypridle
		hyprpaper
		hyprsunset
		hyprpicker
		hyprpicker

	];

	programs.hyprland = {
		enable = true;
		withUWSM = true; # recommended for most users
		xwayland.enable = true; # Xwayland can be disabled.
	};

  	# Optional, hint electron apps to use wayland:
    environment.sessionVariables.NIXOS_OZONE_WL = "1";

}
