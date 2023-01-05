# DevOps-mao-na-massa

#### link da app

``` 
https://github.com/callicoder/spring-boot-mysql-rest-api-tutorial 
```
#### Config do vbox network
```
/etc/vbox/networks.conf

No Linux, macOS e Solaris, o Oracle VM VirtualBox permitirá apenas que endereços IP no intervalo 192.168.56.0/21 sejam atribuídos a adaptadores somente de host. Para IPv6, apenas endereços locais de link são permitidos. Se outros intervalos forem desejados, eles podem ser habilitados criando /etc/vbox/networks.conf e especificando os intervalos permitidos lá. Por exemplo, para permitir os intervalos IPv4 10.0.0.0/8 e 192.168.0.0/16, bem como o intervalo 2001::/64, coloque as seguintes linhas em /etc/vbox/networks.conf:

       * 10.0.0.0/8 192.168.0.0/16
       * 2001::/64
      
As linhas que começam com o hash # são ignoradas. O exemplo a seguir permite quaisquer endereços, desativando efetivamente o controle de alcance:

       * 0.0.0.0/0 ::/0
```
#### Help do Vagrant
##### Dicas
- _vagrant up_ para subir a VM
- _vagrant halt_ para pausar a VM
- _vagrant provision_ para provisionar no metodo que escolher
- vagrant suspend para suspender a VM
- Maior dica de todas: Use _vagrant suspend_ em vez de _halt_, porque o *suspend salva o estado da VM*. Depois de suspender a VM, a VM sobe mais rapido no vagrant up do que os _halt_.
```
Usage: vagrant [options] <command> [<args>]

    -h, --help                       Print this help.

Common commands:
     autocomplete    manages autocomplete installation on host
     box             manages boxes: installation, removal, etc.
     cloud           manages everything related to Vagrant Cloud
     destroy         stops and deletes all traces of the vagrant machine
     global-status   outputs status Vagrant environments for this user
     halt            stops the vagrant machine
     help            shows the help for a subcommand
     init            initializes a new Vagrant environment by creating a Vagrantfile
     login           
     package         packages a running vagrant environment into a box
     plugin          manages plugins: install, uninstall, update, etc.
     port            displays information about guest port mappings
     powershell      connects to machine via powershell remoting
     provision       provisions the vagrant machine
     push            deploys code in this environment to a configured destination
     rdp             connects to machine via RDP
     reload          restarts vagrant machine, loads new Vagrantfile configuration
     resume          resume a suspended vagrant machine
     serve           start Vagrant server
     snapshot        manages snapshots: saving, restoring, etc.
     ssh             connects to machine via SSH
     ssh-config      outputs OpenSSH valid configuration to connect to the machine
     status          outputs status of the vagrant machine
     suspend         suspends the machine
     up              starts and provisions the vagrant environment
     upload          upload to machine via communicator
     validate        validates the Vagrantfile
     vbguest         plugin: vagrant-vbguest: install VirtualBox Guest Additions to the machine
     version         prints current and latest Vagrant version
     winrm           executes commands on a machine via WinRM
     winrm-config    outputs WinRM configuration to connect to the machine

For help on any individual command run `vagrant COMMAND -h`

Additional subcommands are available, but are either more advanced
or not commonly used. To see all subcommands, run the command
`vagrant list-commands`.
        --[no-]color                 Enable or disable color output
        --machine-readable           Enable machine readable output
    -v, --version                    Display Vagrant version
        --debug                      Enable debug output
        --timestamp                  Enable timestamps on log output
        --debug-timestamp            Enable debug output with timestamps
        --no-tty                     Enable non-interactive output
```