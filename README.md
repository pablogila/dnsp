# DNS My Potato

DNS My Potato (DNSMP) is a systemd service to update your IP to an external Dynamic DNS service. 


## Installation

To install DNSMP, first clone the repository:
```shell
git clone https://github.com/pablogila/dnsmp.git
cd dnsmp
```

And run the installation script:
```shell
sudo bash install.sh
```

It will prompt you to write the appropriate curl or wget calls to update the IP to your DDNS service.  

To **uninstall** the service, run `sudo dnsmp uninstall`.
You can **update** by running the install script again.


## Usage

The service includes an utility to perform several tasks.
To check all available commands, use `sudo dnsmp help`.

| Command | Description |
| ------- | ----------- |
| `sudo dnsmp help`         | Show all available commands |
| `sudo dnsmp version`      | Print the software version |
| `sudo dnsmp status`       | Check the service status |
| `sudo dnsmp log`          | View recent logs |
| `sudo dnsmp set`          | Set new update commands |
| `sudo dnsmp force`        | Force a manual update now |
| `sudo dnsmp stop`         | Stop the service |
| `sudo dnsmp start`        | Start the service |
| `sudo dns backup`        | Backup user's DNS update script |
| `sudo dnsmp uninstall`    | Uninstall the service |


## Contribute  

Any suggestions? Issues and PRs are well received! :D


## See also...

[WakeMyPotato](https://github.com/pablogila/WakeMyPotato): Keep alive your Linux server made of a potato laptop after power outages!


## License

> DNS My Potato: Update your IP to external Dynamic DNS services.  
> Copyright (C) 2025 Pablo Gila-Herranz  
>
> This program is free software: you can redistribute it and/or modify  
> it under the terms of the GNU Affero General Public License as published  
> by the Free Software Foundation, either version 3 of the License, or  
> (at your option) any later version.  
>
> This program is distributed in the hope that it will be useful,  
> but WITHOUT ANY WARRANTY; without even the implied warranty of  
> MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the  
> GNU Affero General Public License for more details.  
