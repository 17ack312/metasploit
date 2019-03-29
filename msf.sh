echo  "==================="
echo  "=====written by====="
echo  "==================="
echo "Rajdeep"|figlet
cd
rm -rf metasploit-framework
apt update
apt upgrade -y
apt install -y git wget curl 
echo "\n download metasploit-framework from following sources : \n1.internal source(built-in)\n2.external source(by auxilius)"
echo "\nenter your choice from below:\n1.press 'e' for external source\n2.press 'i' for internal source\n your choice is :\c"
read c
case c in
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
        ;;
       i )
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


