# Deliverable 3 analysis
## 1.System Description
The dilemma is trying to find a solution for hosting a rogue access point that does not have options to support harvesting credentials. This makes information security professionals unable to test organizations on how difficult it is by not having this tool. The significance of creating the LumberHack is that it will host a rogue access point that directs to a “dummy site”. The user will be taken to a page that acts as a login page that will harvest their credentials. By gathering their information it will be stored into a database. Our product is supposed to be used as a tool that allows LumberHack which a rogue access point to let the user harvest credentials by using a fake captive portal. Also this tool will give the security professionals a way to test organizations if there's any security flaws.  

The key requirements to make our system function properly is by having a database that stores the credentials that the user is harvesting from the login captive portals which can be a CAS, Google or Generic that will be hosting as a access point that looks like a rogue access point. The user will have an option for starting the LumberHack on boot and use the command line interface for parameters to start up or shutdown. Operator's are people accessing the LumberHack and collecting the credentials. As for the targets, it is the people who are going to enter their credentials into the captive portal. Our competitor is WifiPhisher which is a rogue access point. They use Wi-Fi security testing and can be used to mount victim-customized web phishing attacks. 

Overall as a developer, I want to create a recipe database system so that business can manage data in a beneficial use. 

## 2. UML Diagram
![](https://github.com/KaelenCarling/LumberHack/blob/master/D3.%20UML.png)

## 3. Class Responsibilities
* Command Line Interface: ( ) 
Responsibility = Starts up or shuts down LumberHacks. This is included to get the whole thing to run in the first place.

* Database: (Stores credentials )
Responsibility = Stores the credentials and is needed to redirect information from the captive portal and store it. 

* Captive portal: ( Directs to the captive portal web pages ) 
Responsibility =  Captive portal redirects the user to the webpages. 

* Startup script: ( Starts up program ) 
Responsibility = Script needed to startup the program. 

* Captive portal web pages: (Webpages to collect operators input)
Responsibility = Collects users credentials which are sent to the database. It is included because it acts as the face of the captive portal. 

* Credential scraping program: ( )
Responsibility = Scrapes credentials from incoming tcp packets and preps them for the database interaction program.
* Database interaction program: ( ) 
Responsibility = Takes credentials from the scraping program and puts them into the server. This is included as a way to transfer information.
* Hostapd: ( )
Responsibility = Hosts the wireless access point and manages the wireless adapter.
* Dnsmaq: ( )
Responsibility = Manages the device connections and ip address allocation.
* Nginx: ( )
    Responsibility = Serves captive portal to connecting devices and manages
    Http protocol.

