# LumberHack

The LumberHack is a simple and robust Rogue Access Point Hosting Solution that hosts a captive portal which will store the credentials the user enters.


### Prerequisites

What things you need to install the software and how to install them

* A wireless adapter that supports monitor mode. We used the Alfa AWUSO36NH.
* A Raspberry Pi running Kali

### Installing

1. Install hostapd, dnsmasq, and nginx. This can be done using the following command
```bash
  sudo apt install hostapd dnsmasq nginx
```

2. Clone the LumberHack Repository
3. run the following commands to create the directory for the captive portal to be stored
```bash
mkdir /var/www/captive_portal
cd /var/www/captive_portal
```
4. Copy the captive portal you wish to use into the directory you just created
5. change directory to
```
 cd /etc/nginx/sites-enabled/
```
and copy the captive_portal file to that directory
6. run LumberHack.sh
```
 ./LumberHack.sh
```
7. If you want LumberHack to start on boot up add the start up script included to the xinitrc file in the home directory

## Deployment
Just boot the raspberry pi up and the LumberHack should start hosting.

## Built With

* [Hostapd](https://w1.fi/hostapd/) - Access Point hosting software
* [Dnsmasq](https://github.com/dnsmasq/dnsmasq) - DCHP server for ip address allocation
* [Nginx](https://www.nginx.com/) - Serves captive portal to connecting user

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for rules regarding pull requests. Before contributing make sure to read [CODE_OF_CONDUCT.md] for details on our code of conduct.

## Authors

* **Kaelen Carling** - *Initial work* - [Github Page](https://github.com/KaelenCarling)
* **Sara Huber** - *Initial work* - [Github Page](https://github.com)
* **Malik Jones** - *Initial work* - [Github Page](https://github.com)
* **Kristine Mae Hermosado** - *Initial work* - [Github Page](https://github.com)

## License

This project is licensed under the GNU General Public License v3.0 - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments


* **Kyler Carling** - *Helped With Start up functionality and some grep problems* - [Github Page](https://github.com/KylerCarling)

