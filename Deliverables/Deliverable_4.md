# D.4 Implementation
## 1. Introduction
In Group 4 we have decided to create a system called LumberHack. The LumberHack will host as a rogue access point that directs the operator to a
“dummy site”. The user will be taken to a page that will seem as a normal page and insert their login credentials. When the user is done inserting their login information into the website their credentials will be harvested and will be stored into a database. Our product is supposed to be used as a tool for ethical hackers to harvest credentials by using fake captive portals to gain knowledge and to improve security.

Github: https://github.com/KaelenCarling/LumberHack
Trello:https://trello.com/invite/b/QdXw0UKb/b24ae93df8d9fc00d48f82204c775af6/lumberhacks-cs-386

## 2. Implemented requirements
Issue:
The dilemma is trying to find a solution for hosting a rogue access point that does not have options to support harvesting credentials. This makes information security professionals unable to test organizations on how difficult it is by not having this tool.

User Stories:
“As a recipe contributor, I want to see the rogue access point to collect information about a user so that I can use it for research for ethical hackers. “
 “As a developer, I want to make an accessible website for users to insert their credentials. “
“As a developer, I want to make sure the design of the form is both functional and aesthetically convincing.”

Features specified in the MVP:
In deliverable 2 we have specified that our MVP was going to be developed by working on the front end and backend of the portals. By building the captive portals for the users to use to insert their login credentials allows us to add features and test integration. The video we have created allows you to see the prototype of the system and how useful our tool can be for business to improve security flaws.


Roles of Designing the LumberHack:
By developing our system the Lumber Hack everyone has their role to make this system function properly. The front end developers who created the fake captive portals that act as normally login webpage which takes the users credentials  were, Alexis, Kristine, Sara, and Malik. As for the backend development Kaelen set up the MySQL server, add compatibility to the backend so it can interface with the MySQL and set up the development environment on the raspberry PI with the wifi adapter.


## 3. Adopted technologies
* Hostapd - Program used to broadcast access point network. Necessary to actually have people connect to the LumberHack
* Nginx - Program that listens for incoming captive portal requests and serves the website as a captive portal
* Dnsmasq - program that assigns connecting users an ip address
* Python - Language that works as a go between the bash scripts and the SQL server
* Bash - Scripting language to get the programs to work together and to pass credentials to the python program
* Html/css - Necessary for the captive portal website.
* Wireless adapter - Physical device to actually broadcast the access point.

## 4. Learning/training
In order to prepare for this project, we had to learn:
* Network protocols
* Docker
* Bash scripting
* MySQL
* PHP

## 5. Deployment
Docker Url = https://hub.docker.com/repository/docker/kaelencarling/lumberhack
AWS URL = http://lumberhack-env.eba-czgwu68n.us-east-2.elasticbeanstalk.com/

The LumberHack was tricky to get working with containers and Docker. Our project relies on specific hardware to operate so it was quite the challenge to adapt it to work with Docker. While this assignment assumes we will use Docker and AWS exclusively to deploy our project we also be using the Arch User Repository or as its commonly called the AUR. The AUR is what most of our target users use to obtain and maintain packages so it makes sense for us to go where it's convenient for them.

## 6. Licensing
For the LumberHack we adopted the GNU GPLv3 license because it’s the license that our dependencies use and it’s a very open license. One of the goals of the LumberHack was to create an easy to implement modular solution to rogue access point hosting and GNU GPLv3 allows security professionals to modify and use it however they need or want.

## 7. Readme File
READ_ME = https://github.com/KaelenCarling/LumberHack/blob/master/README.md

CODE_OF_CONDUCT =
https://github.com/KaelenCarling/LumberHack/blob/master/CODE_OF_CONDUCT.md
 
CONTRIBUTING = https://github.com/KaelenCarling/LumberHack/blob/master/CONTRIBUTING.md

LICENSE =
https://github.com/KaelenCarling/LumberHack/blob/master/LICENSE

## 8. Look & Feel
Our User Interface is a little different from most projects since we have separate “usage groups” we have to appeal to. The operators user interface is built to be accessed over ssh and to be as light as possible. To accomplish this most of the functions of the LumberHack are automated in a python program and a bash script. These scripts and programs allow the Operator to set up the LumberHack with their desired configuration so that when it comes time to deploy the LumberHack all they will need to do is discreetly turn on the device. The Targets User Interface is much more interesting. Since the goal of the LumberHack is to convince the Targets that they are connecting to a legitimate access point, impersonation is the main goal of the interface. To achieve this we made several websites that imitate router logins and google account logins. The ideal result from the target’s user interface is that they will believe that they are actually logging into the system that page is imitating.

## 9. Lessons learned
We have learned throughout the process of making this LumberHack that this is mostly a tool rather a product that doesn't have fancy features to catch a client's eye.  Although it might not catch a client's eye it was  very interesting to create servers and build captive portals for the user to insert their information and harvest those credentials to store them into a database. By creating a UML diagram for the previous deliverable  we realize that there are many classes and methods that extend to one another to make the system function properly. While examining the UML diagram we have created we can see in detail how everything works and what every class does and what is going on in the background during the user is inserting their credentials to access the portal. Overall, by our tool being released for the first time as a prototype we feel our tool is useful for business to improve some security flaws.
As for our second release our goal to reach during the process to improve or include is to  run more demos on more captive portals that we have created and get feedback from users using our tool to make improvements.

## 10. Demo
This Demo of our current implementation makes some minor changes to be able demonstrate the LumberHack’s ability on camera. In addition to storing the credentials the user inputs I ran a command that would print them out to the terminal so that you could see the credential scraping. I also screencapped an SSH session rather than a graphical environment on the LumberHack since that will be the environment that most Operators will use.

URL = https://youtu.be/VZRvA7-nbTU
