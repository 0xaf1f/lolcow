BootStrap: debootstrap
OSVersion: stable
MirrorURL: http://snapshot.debian.org/archive/debian/20170728T040840Z/

%labels
	Maintainer	staff@hpc.nih.gov
	Version		1.0

%runscript
	fortune | cowsay | lolcat

%post
	apt-get update
	apt-get -y install fortune cowsay lolcat
	apt-get clean

%environment
	export PATH="$PATH:/usr/games"
	export LC_ALL=C
