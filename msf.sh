echo  "==================="
echo  "=====written by====="
echo  "==================="
echo "Rajdeep"|figlet
cd
rm -rf metasploit-framework
apt update
apt upgrade -y
apt install -y git wget curl 
echo "\n download metasploit-framework from following sources : \n1.internal source(built-in)\n2.external source(by auxilius\npress '0' for exit)"
echo "\nenter your choice from below:\n1.press '1' for internal source\n2.press '2' for external source\n your choice is :\c"
read c
case c in
	0)
		exit
		;;
	2 )
	echo "\nMSF will be installed shortly from external source\n"
cd
git clone https://github.com/17ack312/m
cd m
chmod +x *
cp metasploit.sh /$HOME
cd
rm m -rf
sh metasploit.sh
        ;;
       1 )
       echo "\nMSF will be installed shortly from internal source\n"
 cd
apt install -y root-repo unstable-repo
apt install -y metasploit

;;

* )
	echo "\nINVALID ENTRY"
	exit
	;;
esac


