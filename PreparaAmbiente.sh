#! /bin/bash
#####################################################################################
#                                   Script                                          # 
#                         Preparação Básica do Debian                               # 
#                          Arthur Paulo Amorim Silva                                # 
#                              data: 20/02/2020                                     #
#####################################################################################

#variaveis
log="/var/log_script.log"


sudo rm -r $log
echo "Script Configuração Basica Debian
    ------------------------------------
        " >> $log

#Cria Pastar Workspace
sudo mkdir /var/workspace

echo "Atualizando Source List"
if mv /etc/apt/sources.list /etc/apt/sources.list.old && echo "
  #------------------------------------------------------------------------------#
  #                   OFFICIAL DEBIAN REPOS                    
  #------------------------------------------------------------------------------#
  
  ###### Debian Main Repos
  deb http://deb.debian.org/debian/ stable main contrib non-free
  deb-src http://deb.debian.org/debian/ stable main contrib non-free
  
  deb http://deb.debian.org/debian/ stable-updates main contrib non-free
  deb-src http://deb.debian.org/debian/ stable-updates main contrib non-free
  
  deb http://deb.debian.org/debian-security stable/updates main
  deb-src http://deb.debian.org/debian-security stable/updates main
  
  deb http://ftp.debian.org/debian buster-backports main
  deb-src http://ftp.debian.org/debian buster-backports main
  " >> /etc/apt/sources.list
  then  echo "atualizado o sources.list!"
        echo "sources.list: OK" >> $log
        sudo apt update
        sudo apt upgrade
  else
        echo "erro ao atualizado o sources.list!"
        echo "sources.list: ERROR" >> $log
fi

  #instala wget
if sudo apt install wget
    then  echo "instalado wget!"
        echo "instalação wget: OK" >> $log
    else
        echo "erro ao instalado wget!"
        echo "instalação wget: ERROR" >> $log
fi
  
  ## instalar VSCODE 
fi sudo apt install software-properties-common apt-transport-https curl
    then
        fi curl -sSL https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
            then  sudo apt update
                  sudo apt install code
                  echo "instalado VSCODE!"
                  echo "instalação VSCODE: OK" >> $log
            else
                  echo "erro ao instalado VSCODE!"
                  echo "instalação VSCODE: ERROR" >> $log
    else
        echo "erro ao instalado dependencias VSCODE!"
        echo "instalação dependencias VSCODE: ERROR" >> $log
fi
  
  #isntala yarn e npm pra desenvolvimento js e web
  sudo apt install yarn -y
  sudo apt install npm -y
  
  #instala o react de forma global
  npm add -g create-react-app -y
  
  #instala e configura o ambiente para usar o python 3 como padrao
  if sudo apt install python3
  then    sudo rm /usr/bin/python
          sudo ln -s python3 /usr/bin/python
  else
      echo "Erro ao configurar o python3 como padrao"
  fi
  
  #instala pip
  sudo apt install python3-pip -y
  
  #instala scrapy
  pip3 install scrapy
  
  #instala e sobe banco local
  sudo apt install postgresql-11 -y 
  sudo pg_ctlcluster 11 main start
  
  
  #instala DBeaver
  cd /home/$USER/Downloads
      sudo wget https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb
      sudo dpkg -i dbeaver-ce_latest_amd64.deb
  cd
  
  sudo apt install neofetch -y
  sudo echo "neofetch" >> /home/$USER/.bashrc
  neofetch