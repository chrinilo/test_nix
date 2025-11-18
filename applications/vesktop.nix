{ config, pkgs, ... }:
{
	environment.systemPackages = with pkgs; [
		vesktop
	];

	programs.vesktop = {
		enabled = true;
	};
}

