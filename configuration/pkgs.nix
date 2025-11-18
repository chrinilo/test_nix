{ pkgs, ... }:
{
	
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
