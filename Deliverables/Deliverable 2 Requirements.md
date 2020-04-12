# Deliverable 2 Requirements

## 1. Positioning
### 1.1 Problem Statement

There is no easy to setup/use solution for hosting a rogue access point and the current options don’t support credential harvesting. This impacts information security professionals ability to test organizations.

#### 1.2 Product Position Statement 
For ethical hackers hosting a rogue access point can be difficult. The LumberHack is a rogue access point that allows the operator to scrape credentials using a fake captive portal. Our project allows security professionals to test their teams and organizations for security flaws.

### 1.3 Value proposition
The LumberHack will host a rogue access point that directs to a dummy site. The user will be taken to a page that will act as a login page that will then harvest the credentials for the clients using it and store the information into a database.

## 2. Stake Holders

1. The operator(s)
    * This is the person/people that will be managing and accessing the LumberHack. They are also the person/people that are collecting the credentials.
2. Targets
    * The Targets are the people that are connected to the network and entering their credentials into the captive portal.
3. Competitors
    * WifiPhisher, this company is a rogue access point framework that uses Wi-Fi security testing and can be used to mount victim-customized web phishing attacks. This company would be a direct competitor against LumberHack.

## 3. Functional Requirements
1. A database that stores the credentials and has a formatted output.
2. Hosts a access point that looks like a rogue access point.
3. Command line interface for parameters and start up/shutdown.
4. Option for starting LumberHack on boot.
5. Facebook login captive portal.
6. Google login captive portal.
7. Generic captive portal
8. Install script for installing dependencies

## 4. Non-Functional requirements
1. Performance Efficiency - The LumberHack will be able to run off of a raspberry pi b+ without overheating.
2. Compatibility -  The LumberHack will have support for all browsers and operating systems made by Apple, windows, mozilla, and google.
3. Usability - The LumberHack will be able to be configured to start on boot. The stored credentials on the database will be able to be output to a document.
4. Reliability - The LumberHack software will be able to keep up a rogue access point for at least 4 hours without operator input.
5. Security - The LumberHack will only be accessible through password protected SSH and physical access through the device.
6. Portability - The LumberHack will be built to work with a raspberry pi B+and a AWUS alfa nh36 wifi adapter but will be able to work with any system running Kali Linux and using a wifi adapter that supports monitor mode and packet injection.

## 5. MVP
We will develop our MVP by working from the front end to the back end. We will start by building the captive portal and configuring the access point hosting. This will allow us to add features and test their integration almost immediately. Our first 5 functional features will be the core features of our MVP, and will allow us to do product tests with some of our users that we interviewed. This will allow us to make sure that our development is going to useful features that our users will actually use.

## 6. Use cases
### 6.1 Diagram
**Use Case Diagram Link**: https://github.com/KaelenCarling/LumberHack/blob/master/Use%20Case%20diagram.PNG
![](https://github.com/KaelenCarling/LumberHack/blob/master/Pictures/Use%20Case%20diagram.PNG)

### 6.2 Use Case Descriptions
**Use Case**: Stores Data into Database
**Primary Actor**: Rogue Access Point
**Description**: Data is collected from the user and stored into the database
**Pre-Condition**: The user has insert credentials into the rogue access point 
**Post-condition**: The user will get redirected to a new page and their information is stored 
**Main Flow**: 
1. User inputs credentials
2. Information gets stored into a database
3. User gets redirected to a “dummy site” 

**Alternative Flow**:
1. There are no users
2. There is no information to sotre
3. Nothing happens

**Use Case**: Setting up the access point
**Primary Actor**: The Operator
**Description**: The Operator chooses how the LumberHack will be started up
**Pre-Condition**:   LumberHack has been installed on a Kali Linux system and their wireless adapter has been set to monitor mode.
**Post-condition**:  The LumberHack will now start on system startup.
**Main Flow**: 
1. Operator runs the startup script.
2. The Operator chooses the start on boot option.
3. LumberHack will now start on reboot.

**Alternative Flow**:
1. The Operator chooses to not have LumberHack start on boot.
2. The Operator will need to run the startup script manually.

**Use Case**: Operator data exfiltration
**Primary Actor**: Operator of the Access Point
**Description**: Operator retrieves data from the LumberHack
**Pre-Condition**:  The Operator owns and manages the LumberHack
**Post-condition**:  The Operator has a formatted printout of all of the credentials that were entered into the captive portal.
**Main Flow**: 
1. The Operator chooses the formatted print out function of the command line interface.
2. The Operator can then specify a directory to place the file with all of the credentials.
3. The Operator then can copy, move, or view the credential file.

**Alternative Flow**:
1. The Operator chooses the default print out function.
2. The Operator can view the credentials printed out in the command line.

**Use Case**: Insert credentials
**Primary Actor**: User
**Description**: The user inputs his/her credentials in the system.
**Pre-Condition**:  The user chooses the LumberHack system.
**Post-condition**:  The user’s data has been stored and is directed to some website.
**Main Flow**: 
1. The user is directed to the captive portal site.
2. The user logs into the system with credentials.
3. The system saves the data.
4. The system redirects the user into a different webpage.

**Alternative Flow**: * a. At any time, the user cancels the operation.
1. The system asks for confirmation.
2. The user confirms the cancellation.
3. The system reboots and the use case is restarted.

**Use Case**: Gains access to data
**Primary Actor**: Business
**Description**: The business acquires user data through the database
**Pre-Condition**:  The business gains access to the database storage
**Post-condition**:  The business uses the retrieved user data for research and functionality improvement
**Main Flow**: 
1. The business requests access to the database
2. The system grants access
3. The business searches for the desired data*
4. The system displays the data to the business

**Alternative Flow**: *a. The user data requested does not exist
1. The system notifies the business that the requested data does not exist

## 7. User Stories
As a recipe contributor, I want to see the rogue access point to collect information about a user so that I can use it for research for ethical hackers.

As a developer, I want to create a recipe database system so that business can manage data in a beneficial use.

As a user, I want to be able to insert my credentials into a form and submit it to the database.

As a business, I want to be able to have access to the user’s credentials.

As a business, I want to be able to manage a user’s data.

As a developer, I want to make an accessible website for users to insert their credentials.

As a developer, I want to see the number of views of users accessing the website.

As a developer, I want to ensure the design of the form is both functional and aesthetically convincing.

As an Operator I want to be able to customize the startup options of the LumberHack.

As an Operator I want to be able to have the credentials exported to a file that I can copy from.

## 8. Trello
**Trello Link**: https://trello.com/invite/b/QdXw0UKb/b24ae93df8d9fc00d48f82204c775af6/lumberhacks-cs-386
**Screenshot link**: https://github.com/KaelenCarling/LumberHack/blob/master/Pictures/trello.PNG
![](https://github.com/KaelenCarling/LumberHack/blob/master/Pictures/trello.PNG)



