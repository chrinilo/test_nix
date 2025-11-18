{ config, pkgs, ... }:
{
	environment.systemPackages = with pkgs: [
		steam
		steam-original
		steam-unwrapped
		steam-run
		mangohud
	];

	boot.kernelPackages = pkgs.linuxPackages; # (this is the default) some amdgpu issues on 6.10
	
	programs = {
		gamescope = {
			enable = true;
			capSysNice = true;
		};
		steam = {
			enable = true;
			remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
			dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
			localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
		};
		# appimage for some games download appimage instead of other files.
		appimage = {
			enable = true;
			binfmt = true;
		};
	};
	
	hardware.xone.enable = true; # support for the xbox controller USB dongle
	services.getty.autologinUser = "your_user";
	environment = {
		systemPackages = pkgs.mangohud;
		loginShellInit = ''
		[[ "$(tty)" = "/dev/tty1" ]] && ./gs.sh
		'';
	};

	services.getty.autologinUser = "cici";

}

