# Bootcamp - Linux do Zero:



## Principais comandos Linux:

    ls: lista arquivos e diretórios
    cd: muda o diretório atual
    pwd: mostra o caminho completo do diretório atual
    mkdir: cria um novo diretório
    rm: remove arquivos e diretórios
    cp: copia arquivos e diretórios
    mv: move ou renomeia arquivos e diretórios
    cat: exibe o conteúdo de um arquivo
    nano: cria/edita arquivos de diferente extensoes
    echo: exibe uma mensagem ou o conteúdo de uma variável
    man: exibe o manual de um comando
    reboot : reinicia a maquina
    shutdown 0: desliga a maquina

<br>

## Passos para criar um servidor:

Escolha um sistema operacional: recomenda-se o uso de distributions Linux como Ubuntu ou CentOS

Instale o sistema operacional no servidor:

	Passos para instalar o Ubuntu Server no servidor:

	Baixe a imagem ISO do Ubuntu Server do site oficial: https://ubuntu.com/download/server
	Crie um disco de instalação a partir da imagem ISO, gravando-a em um DVD ou copiando-a para uma unidade flash USB
	Inicialize o servidor com o disco de instalação e inicie a instalação
	Selecione o idioma, local e teclado desejados
	Conecte-se à Internet ou escolha "Não Conectar Agora"
	Selecione "Instalar o Ubuntu Server"
	Selecione o disco de destino para instalar o sistema operacional
	Selecione "Sim" para formatar o disco de destino
	Crie uma partição manual se necessário e selecione "Continuar"
	Selecione "Confirmar Escrita das Mudanças no Disco"
	Escolha um nome de usuário e senha para a conta de administrador
	Selecione "Instalar Agora"
	Selecione a fonte de horário e ajuste as configurações de data e hora
	Selecione "Continuar" e aguarde a conclusão da instalação
	Reinicie o servidor e faça o login com sua conta de administrador*

## Configure o endereço IP estático
	
	Os passos para configurar o endereço IP estático em um servidor Linux pelo terminal são os seguintes:

	Conecte-se ao servidor via terminal ou console.
	Verifique o nome da sua interface de rede com o seguinte comando:
	
	
	ip addr show
	Crie ou edite o arquivo de configuração da interface de rede com o seguinte comando:
	
	sudo nano /etc/sysconfig/network-scripts/ifcfg-<interface>
	onde <interface> é o nome da sua interface de rede (por exemplo, eth0).
	
	Adicione ou altere as seguintes linhas para definir o endereço IP estático:
	makefile
	
	DEVICE=<interface>
	BOOTPROTO=none
	ONBOOT=yes
	IPADDR=<ip-address>
	NETMASK=<subnet-mask>
	GATEWAY=<default-gateway>
	DNS1=<dns-server-1>
	DNS2=<dns-server-2>
	onde <interface> é o nome da sua interface de rede, <ip-address> é o endereço IP estático que você deseja atribuir, <subnet-mask> é a máscara de sub-rede, <default-gateway> é o gateway padrão e <dns-server-1> e <dns-server-2> são os servidores DNS.
	
	Salve as alterações e saia do arquivo com CTRL + X, Y e Enter
	Reinicie o serviço de rede com o seguinte comando:
	
	sudo systemctl restart network
	Verifique o endereço IP estático atribuído com o seguinte comando:
	
	
	ip addr show <interface>
	onde <interface> é o nome da sua interface de rede.
	
	Se a saída mostrar o endereço IP estático corretamente configurado, a configuração está concluída.
	Observação: A configuração acima é apenas um exemplo e pode ser diferente em seu servidor. É importante verificar a documentação da sua rede antes de configurar o endereço IP estático.
	
## Instale e configure o gerenciador de pacotes: apt ou yum
	
	Atualize a lista de pacotes disponíveis com o seguinte comando:
	
	
	sudo apt update
	Caso queira instalar um pacote específico, use o seguinte comando:
	
	sudo apt install <package-name>
	onde <package-name> é o nome do pacote que você deseja instalar.
	
	Caso queira atualizar um pacote existente, use o seguinte comando:
	
	
	sudo apt upgrade <package-name>
	onde <package-name> é o nome do pacote que você deseja atualizar.
	
	Caso queira remover um pacote, use o seguinte comando:
	
	sudo apt remove <package-name>
	onde <package-name> é o nome do pacote que você deseja remover.
	
	Para limpar o cache de pacotes, use o seguinte comando:
	
	sudo apt clean
	Para verificar se há pacotes quebrados no sistema, use o seguinte comando:
	
	
	sudo apt check
	Para adicionar um repositório de pacotes, crie ou edite o arquivo de configuração do repositório com o seguinte comando:
	
	
	sudo nano /etc/apt/sources.list.d/<repository-name>.list
	onde <repository-name> é o nome do repositório que você deseja adicionar.
	
	Adicione a URL do repositório na primeira linha do arquivo e salve as alterações.
	
	Atualize a lista de pacotes disponíveis com o seguinte comando:
	
	
	
	sudo apt update
	Observação: É importante sempre verificar a documentação do pacote antes de instalar ou atualizar. Além disso, os comandos acima são apenas um exemplo e podem ser diferentes em sua distribuição Linux.




	

## Instale e configure o Apache ou outro servidor web
	
	Instale o Apache com o seguinte comando:
	
	sudo apt install apache2
	Inicie o Apache com o seguinte comando:
	
	
	sudo systemctl start apache2
	Verifique o status do Apache com o seguinte comando:
	
	
	sudo systemctl status apache2
	Habilite o Apache para iniciar automaticamente durante o boot com o seguinte comando:
	
	
	sudo systemctl enable apache2
	Verifique se a instalação do Apache está funcionando corretamente acessando o endereço IP do servidor no navegador. Deve ser exibida uma página padrão do Apache.
	
	Edite o arquivo de configuração do Apache com o seguinte comando:
	
	
	sudo nano /etc/apache2/apache2.conf
	Adicione as configurações desejadas e salve as alterações.
	
	Recarregue o Apache para aplicar as alterações com o seguinte comando:
	
	
	sudo systemctl reload apache2
	Observação: É importante sempre verificar a documentação do pacote antes de instalar ou atualizar. Além disso, os comandos acima são apenas um exemplo e podem ser diferentes em sua distribuição Linux.




	
## Configure o firewall para permitir tráfego na porta HTTP (port 80)
	
	sudo apt install ufw
	Ative o ufw com o seguinte comando:
	
	
	sudo ufw enable
	Permita o tráfego na porta 80 com o seguinte comando:
	
	
	sudo ufw allow 80/tcp
	Verifique as regras configuradas no ufw com o seguinte comando:
	
	sudo ufw status
	Recarregue o ufw para aplicar as alterações com o seguinte comando:
	
	sudo ufw reload
	Observação: É importante sempre verificar a documentação do pacote antes de instalar ou atualizar. 
	Além disso, os comandos acima são apenas um exemplo e podem ser diferentes em sua distribuição Linux.
		
## Instale e configure um banco de dados se necessário (MySQL, PostgreSQL, etc.)

	Instale o MySQL:
	
	sudo apt-get update
	sudo apt-get install mysql-server
	Configure a segurança do MySQL:
	
	sudo mysql_secure_installation
	Inicie o serviço do MySQL:
	
	
	sudo service mysql start
	Log in no MySQL como usuário root:
	
	
	mysql -u root -p
	Crie um usuário e uma senha:
	
	
	CREATE USER 'novo_usuario'@'localhost' IDENTIFIED BY 'nova_senha';
	Conceda permissões ao novo usuário:
	
	GRANT ALL PRIVILEGES ON * . * TO 'novo_usuario'@'localhost';
	FLUSH PRIVILEGES;
	Crie uma nova base de dados:
	
	CREATE DATABASE nova_base_dados;
	Sair do MySQL:
	
	exit;
	
	Lembre-se de sempre manter a segurança do seu banco de dados e mantê-lo atualizado com as últimas correções de segurança.
	
	
Crie e publique seu site ou aplicativo.


**By: Rodrigo Lopes**



