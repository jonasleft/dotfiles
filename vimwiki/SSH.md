# SSH

## Generate SSH key

1. Generate key, if no identity exist (~/.ssh): `ssh-keygen -t ed25519 -C "email"`
2. Copy key to server: `ssh-copy-id` "pi@wlha101-raspi -p 80"

## Jump hosts

* `ssh -J host1 host2`
* `ssh -J <facility>-gw <your-machine-in-the-machine-network>`
* File copy through gateway: `scp -oProxyJump=sf-gw file sf-tit-01:/home/purtschert_j/file`

## Tunneling

* requires `GatewayPorts yes` in /etc/ssh/sshd_config
* `ssh -L <LPORT>:<RHOST>:<RPORT> <GATEWAY>
* x2go through hop tunnel:` ssh -4 -L 9000:pc12010.psi.ch:22 purtschert_j@hop.psi.ch`
* Through SSH Gateway example:    
  * BLUE ---> [8080------->22] RED --> 80 GREEN
  * Execute on BLUE: `ssh -L 8080:GREEN:80 reduser@RED`
  * Open: http://localhost:8080


## Remote execute

* `ssh host command`
* `ssh -t host command` : opens pseudo terminal. Same as using without command

## ssh-agent

Use ssh-agent to cache passphrases for SSH in current session:

* `alias ssha='eval $(ssh-agent) && ssh-add'`

## Configfile


