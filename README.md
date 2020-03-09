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


## Deployment

Add additional notes about how to deploy this on a live system

## Built With

* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for rules regarding pull requests. Before contributing make sure to read [CODE_OF_CONDUCT.md] for details on our code of conduct.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the GNU General Public License v3.0 - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc

