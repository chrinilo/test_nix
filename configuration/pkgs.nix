{ pkgs, ... }:
{
	
	# Allow unfree packages
  	nixpkgs.config.allowUnfree = true;
	
	environment.systemPackages = with pkgs; [
		# neovim requirements
		neovim
		git
		gcc
		unzip

		vscode

		# fonts
		fira-code-symbols
	];
}
