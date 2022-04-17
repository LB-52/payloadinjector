
#!/bin/bash
clear
echo
cat logo.txt
echo          
sleep 5 &
pid=$!

frames="/ | \ \ -"

while kill -0 $pid 2&>1 ? /dev/null;
do
   for frame in $frames;
   do
         printf "                             \r$frame Loding...."
         sleep 0.2
    done
done

  printf "\n"

clear
echo
cat logo.txt
echo
echo -e "\e[1;36m [+] starting"
echo
echo
echo -e "\e[1;36m                                                ctrl+c for quite \e[0m"
  PS3=" Select the option:"

select opt in payloads runpayloads  ; do

  case $opt in

payloads)

cat payload.txt

break
     ;;
runpayloads)
echo
echo
echo -e "\e[1;33m enter url of website [>] \e[0m"
read url
  echo
  echo
echo -e "\e[1;36m **********select your payloads**********\e[0m"
echo -e "\e[1;33m "
select oopt in .// ..//;do

   PS3="[>]"

firefox  $url$oopt 

   done

           
break

      ;;
    *) 
      echo "Invalid option $REPLY"
      ;;
  esac
done
 
