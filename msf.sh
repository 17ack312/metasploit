echo  "==================="
echo  "=====written by====="
echo  "==================="
echo "Rajdeep"|figlet
cd
rm -rf metasploit-framework
apt update
apt upgrade -y
apt install -y git wget curl ruby
echo "\n download metasploit-framework from following sources : \n1.internal source(built-in)\n2.external source(by auxilius)\n"
echo "\nyou can press 'x' for exit\n"
echo "\nenter your choice from below:\n1.press 'i' for internal source\n2.press 'e' for external source\n your choice is :\c"
read c
case $c in
	x )
		exit
		;;
	e )
	echo "\nMSF will be installed shortly from external source\n"
cd
git clone https://github.com/17ack312/m
cd m
chmod +x *
cp metasploit.sh /$HOME
cd
rm m -rf
sh metasploit.sh
cd 
cd metasploit-framework
chmod +x *
gem install bundler
gem install bundle
gem install rubygems-update
update_rubygems
bundle install
bundle update
bundle install -j5
gem install nokogiri --pre

        ;;
       i )
       echo "\nMSF will be installed shortly from internal source\n"
 cd
apt install -y root-repo unstable-repo ruby
apt install -y metasploit
cd 
cd /data/data/com.termux/files/usr/lib/ruby/2.6.0
chmod +x *
gem install rubygems-update
update_rubygems
gem install nokogiri --pre
gem install bundler
gem install bundle
bundle install
bundle update
cd bundler
bundle init
chmod +x *
bundle add rspec
bundle install
bundle update
bundle exex rspec
bundle install -j51
b
;;

* )
	echo "\nINVALID ENTRY"
	
	;;
esac


