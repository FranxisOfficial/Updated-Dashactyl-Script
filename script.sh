#!/bin/bash

set -e
#############################################################################
#                                                                           #
#                 (っ◔◡◔)っ ♥ DASHACTYL SCRIPT 2.0 ♥                       #
#                                                                           #
#############################################################################
   clear
    echo "══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════"
    echo "    
  _____           _____ _    _          _____ _________     ___         _____  _____ _____  _____ _____ _______   ___    ___  
 |  __ \   /\    / ____| |  | |   /\   / ____|__   __\ \   / / |       / ____|/ ____|  __ \|_   _|  __ \__   __| |__ \  / _ \ 
 | |  | | /  \  | (___ | |__| |  /  \ | |       | |   \ \_/ /| |      | (___ | |    | |__) | | | | |__) | | |       ) || | | |
 | |  | |/ /\ \  \___ \|  __  | / /\ \| |       | |    \   / | |       \___ \| |    |  _  /  | | |  ___/  | |      / / | | | |
 | |__| / ____ \ ____) | |  | |/ ____ \ |____   | |     | |  | |____   ____) | |____| | \ \ _| |_| |      | |     / /_ | |_| |
 |_____/_/    \_\_____/|_|  |_/_/    \_\_____|  |_|     |_|  |______| |_____/ \_____|_|  \_\_____|_|      |_|    |____(_)___/ 
                                                                                                                              
                                                                                                                              
"
    echo "══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════"
    echo "You use Dashactyl Script Version 1.2.1 "
    echo "You can Report Bug on GitHub, or on Discord"
    echo "You can get more info on our Discord"
    echo "© 𝐂𝐨𝐩𝐲𝐫𝐢𝐠𝐡𝐭 𝐅𝐫𝐚𝐧𝐱𝐢𝐬 𝐃𝐞𝐯𝐞𝐩𝐥𝐨𝐦𝐞𝐧𝐭"
    echo "══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════"
    echo "This Script support all OS, If you want better installation uses a fresh OS."
    echo "══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════"

    if [ "$lsb_dist" =  "ubuntu" ]; then
    echo "This script currently is only available for Lastest Ubuntu operating systems."
    echo "══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════"
    fi

install_options(){
    echo "Please select your installation option:"
    echo "══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════"
    echo "═★(𝟭) 𝗜𝗻𝘀𝘁𝗮𝗹𝗹 𝗙𝘂𝗹𝗹 𝗗𝗮𝘀𝗵𝗮𝗰𝘁𝘆𝗹"
    echo "══★(𝟮) 𝗜𝗻𝘀𝘁𝗮𝗹𝗹 𝘁𝗵𝗲 𝗗𝗲𝗽𝗲𝗻𝗱𝗲𝗿𝗰𝗶𝗲𝘀"
    echo "═════★(𝟯) 𝗜𝗻𝘀𝘁𝗮𝗹𝗹 𝘁𝗵𝗲 𝗙𝗶𝗹𝗲𝘀"
    echo "═════════★(𝟰) 𝗖𝗼𝗻𝗳𝗶𝗴𝘂𝗿𝗲 𝗦𝗲𝘁𝘁𝗶𝗻𝗴𝘀"
    echo "═══════════════★(𝟱) 𝗖𝗿𝗲𝗮𝘁𝗲 𝗮𝗻𝗱 𝗰𝗼𝗻𝗳𝗶𝗴𝘂𝗿𝗲 𝗮 𝗿𝗲𝘃𝗲𝗿𝘀𝗲 𝗽𝗿𝗼𝘅𝘆"
    echo "═════════════════════★(𝟲) 𝗖𝗵𝗲𝗰𝗸 𝗳𝗼𝗿 𝗨𝗽𝗱𝗮𝘁𝗲𝘀"
    echo "══════════════════════════════★(𝟳) 𝗥𝗲𝗺𝗼𝘃𝗲 𝗗𝗮𝘀𝗵𝗮𝗰𝘁𝘆𝗹"
    echo "══════════════════════════════════════★(𝟴) 𝗘𝗫𝗜𝗧"
    echo "══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════"
    read choice
    case $choice in
        1 ) installoption=1
            dependercy_install
            file_install
            settings_configuration
            reverseproxy_configuration
            ;;
        2 ) installoption=2
            dependercy_install
            ;;
        3 ) installoption=3
            file_install
            ;;
        4 ) installoption=4
            settings_configuration
            ;;
        5 ) installoption=5
            reverseproxy_configuration
            ;;
        6 ) installoption=6
            update_check
            ;;
        7 ) installoption=7
            update_check
            ;;
        * ) output "You did not enter a valid selection."
            install_options
    esac
}

dependercy_install() {
    echo "------------------------------------------------------"
    echo "Starting Dependercy install."
    echo "------------------------------------------------------"
    sudo apt-get install nodejs
    sudo apt install npm
    sudo apt-get install git
    sudo apt update
    echo "-------------------------------------------------------"
    echo "Dependercy Install Completed!"
    echo "-------------------------------------------------------"
}
file_install() {
    echo "-------------------------------------------------------"
    echo "Starting File install."
    echo "-------------------------------------------------------"
    cd /var/www/
    sudo git clone https://github.com/real2two/dashactyl.git
    cd dashactyl
    sudo npm install
    sudo npm install forever -g
    echo "-------------------------------------------------------"
    echo "Dashactyl File Install Completed!"
    echo "-------------------------------------------------------"
}
settings_configuration() {
    echo "-------------------------------------------------------"
    echo "Starting Settings Configuration."
    echo "Go to Sirv Deveploment Discord for more information about the settings."
    echo "You can't notify about bugs of this script on Dashactyl"
    echo "-------------------------------------------------------"
    cd /var/www/dashactyl/
    file=settings.json

    echo "What is the web port? [80] (This is the port Dashactyl will run on)"
    read WEBPORT
    echo "What is the web secret? (This will be used for logins)"
    read WEB_SECRET
    echo "What is the pterodactyl domain? [panel.yourdomain.com]"
    read PTERODACTYL_DOMAIN
    echo "What is the pterodactyl key?"
    read PTERODACTYL_KEY
    echo "What is the Discord Oauth2 ID?"
    read DOAUTH_ID
    echo "What is the Discord Oauth2 Secret?"
    read DOAUTH_SECRET
    echo "What is the Discord Oauth2 Link?"
    read DOAUTH_LINK
    echo "What is the Callback path? [callback]" 
    read DOAUTH_CALLBACKPATH
    echo "Prompt [TRUE/FALSE] (When set to true users wont have to relogin after a session)"
    read DOAUTH_PROMPT
    sed -i -e 's/"port":.*/"port": '$WEBPORT',/' -e 's/"secret":.*/"secret": "'$WEB_SECRET'"/' -e 's/"domain":.*/"domain": "'$PTERODACTYL_DOMAIN'",/' -e 's/"key":.*/"key": "'$PTERODACTYL_KEY'"/' -e 's/"id":.*/"id": "'$DOAUTH_ID'",/' -e 's/"link":.*/"link": "'$DOAUTH_LINK'",/' -e 's/"path":.*/"path": "'$DOAUTH_CALLBACKPATH'",/' -e 's/"prompt":.*/"prompt": '$DOAUTH_PROMPT'/' -e '0,/"secret":.*/! {0,/"secret":.*/ s/"secret":.*/"secret": "'$DOAUTH_SECRET'",/}' $file
    echo "-------------------------------------------------------"
    echo "Configuration Settings Completed!"
}
reverseproxy_configuration() {
    echo "-------------------------------------------------------"
    echo "Starting Reverse Proxy Configuration."
    echo "-------------------------------------------------------"

   echo "Select your webserver [NGINX]"
   read WEBSERVER
   echo "Protocol Type [HTTP]"
   read PROTOCOL
   if [ $PROTOCOL != "HTTP" ]; then
   echo "------------------------------------------------------"
   echo "HTTP is currently only supported on the install script."
   echo "------------------------------------------------------"
   return
   fi
   if [ $WEBSERVER != "NGINX" ]; then
   echo "------------------------------------------------------"
   echo "Aborted, only Nginx is currently supported for the reverse proxy."
   echo "------------------------------------------------------"
   return
   fi
   echo "What is your domain? [example.com]"
   read DOMAIN
   apt install nginx
   sudo wget -O /etc/nginx/conf.d/dashactyl.conf https://raw.githubusercontent.com/J0shh/dashactyl-installer/main/assets/NginxHTTPReverseProxy.conf
   sudo apt-get install jq 
   port=$(jq -r '.["website"]["port"]' /var/www/dashactyl/settings.json)
   sed -i 's/PORT/'$port'/g' /etc/nginx/conf.d/dashactyl.conf
   sed -i 's/DOMAIN/'$DOMAIN'/g' /etc/nginx/conf.d/dashactyl.conf
   sudo nginx -t
   sudo nginx -s reload
   systemctl restart nginx
   echo "-------------------------------------------------------"
   echo "Reverse Proxy Install and configuration completed."
   echo "-------------------------------------------------------"
   echo "Here is the config status:"
   sudo nginx -t
   echo "-------------------------------------------------------"
   echo "Note: if it does not say OK in the line, an error has occurred and you should try again or get help in the Dashactyl Discord Server."
   echo "-------------------------------------------------------"
   if [ $WEBSERVER = "APACHE" ]; then
   echo "Apache isn't currently supported with the install script."
   echo "------------------------------------------------------"
   return
   fi
}
update_check() {
    latest=$(wget https://raw.githubusercontent.com/J0shh/dashactyl-installer/main/assets/LATEST.json -q -O -)
    #latest='"version": "0.1.2-themes6",'
    version=$(grep -Po '"version":.*?[^\\]",' /var/www/dashactyl/settings.json) 

    if [ "$latest" =  "$version" ]; then
    echo "-------------------------------------------------------"
    echo "You're running the latest version of Dashactyl."
    echo "-------------------------------------------------------"
    else 
    echo "You're running an outdated version of Dashactyl."
    echo "-------------------------------------------------------"
    echo "Would you like to update to the latest version? [Y/N]"
    echo "Bu updating your files will be backed up in /var/www/dashactyl-backup/"
    read UPDATE_OPTION
    echo "-------------------------------------------------------"
    if [ "$UPDATE_OPTION" = "Y" ]; then
    var=`date +"%FORMAT_STRING"`
    now=`date +"%m_%d_%Y"`
    now=`date +"%Y-%m-%d"`
    if [[ ! -e /var/www/dashactyl-backup/ ]]; then
    mkdir /var/www/dashactyl-backup/
    finish_update
    elif [[ ! -d $dir ]]; then
    finish_update
    fi
    else
    echo "Update Aborted"
    echo "Restart the script if this was a misstake."
    echo "-------------------------------------------------------"
    fi
    fi
}
finish_update() {
   tar -czvf "${now}.tar.gz" /var/www/dashactyl/
   mv "${now}.tar.gz" /var/www/dashactyl-backup
   rm -R /var/www/dashactyl/
   file_install
}
install_options
