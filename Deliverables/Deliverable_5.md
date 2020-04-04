# D5. Design

## 1. Description:

In Group 4 we have decided to create a system called LumberHack. The LumberHack will host as a rogue access point that directs the operator to a

&quot;dummy site&quot;. The user will be taken to a page that acts as a login page that will harvest their credentials. By gathering their information it will be stored into a database. Our product is supposed to be used as a tool that allows LumberHack which is a rogue access point to let the user harvest credentials by using a fake captive portal.

The requirements to make our system function properly is by having a database that stores the credentials that the user is harvesting from the login captive portals which can be a CAS, Google or Generic.  The user will have an option for starting the LumberHack on boot and use the command line interface for parameters to start up or shutdown. Operators are people accessing the LumberHack and collecting the credentials. As for the targets, it is the people who are going to enter their credentials into the captive portal. Overall, as developers we want to create a tool for security professionals a way to test organizations if there are any security flaws.

## 2. Architecture:
![Architecture Diagram](https://github.com/KaelenCarling/LumberHack/blob/Deliverable-5/Pictures/base_Uml.jpg)

## 3. Class Diagram:
![Class Diagram](https://github.com/KaelenCarling/LumberHack/blob/Deliverable-5/Pictures/Deliverable_5_3.png)

## 4. Sequence Diagram
![Sequence Diagram](https://github.com/KaelenCarling/LumberHack/blob/Deliverable-5/Pictures/sequence%20diagram.png)

**Use case:** Setting up the access point

**Primary Actor:**  The Operator

**Description:** The Operator chooses how the LumberHack will be started up

**Pre-conditions:** LumberHack has been installed on a Kali Linux system and their wireless adapter has been set to monitor mode.

**Post-conditions:** The LumberHack will start on system startup.

**Main Flow:**

1. Operator runs the startup script.
2. The Operator chooses the start on boot option.
3. LumberHack will now start on reboot.

**Alternative Flow:**

1. The Operator chooses to not have LumberHack start on boot.
2. The Operator will need to run the startup script manually.


## 5. Design Patterns
  1. Design Pattern 1 (Structural) Composite:
    1.
  2. Design Pattern 2 (Behavioral) Command:
  3. Design Pattern 3 (Behavioral) Strategy:
    1.



## 6. Design Principles
  1. Single responsibility principle - This SOLID principle states that a class should only focus on doing one thing and doing it well. Usually this means splitting tasks into different classes that attempt to group related tasks. In the LumberHack we accomplished this by separating out functions of the system into separate scripts and programs that are built for one specific purpose. The programs that we chose to use for the LumberHack also made this easier since they were built for one specific purpose.
  2. Open/closed principle - The open/closed solid principle states that software classes should be closed to modification but open to extension. Essentially a software class should have a set functionality that can be expanded on using extension rather than modification of source code. Normally this is done through polymorphism but since our project combines other small programs to form one cohesive system we have to be a little more creative in our implementation of this principle. We accomplished this by having scripts/programs that managed functions of larger programs. For example the functions of TCPflow and the sql database are similar in purpose yet different in fundamental tasks. So in order to support the open/closed principle we built separate scripts that feed into the main credential scraping program. This allows the main credential scraping program to extend their functionality without it directly changing them.
  3. Liskov substitution principle - Liskov&#39;s substitution states that any class should be able to be replaced by it&#39;s subclass and still maintain functionality. This principle doesn&#39;t necessarily apply directly to our project.since it is more of a system than a single program. However it does kind of indirectly apply to the credential scraper and TCPflow. The credential scraper isn&#39;t strictly a super class to TCPflow since they are separate programs but it does extend the functionality. The credential scraper could be replaced by TCPflow there just would be some functionality lost when it comes to formatting for the database.
  4. Interface segregation principle - Interface Segregation principle is centered around splitting up large interfaces into smaller ones to avoid &quot;fat&quot; interfaces. In our project this is centered around splitting up large scripts and programs into smaller more directed ones. This can be seen in our manager script which is merely the concrete implementation of 4 smaller sub programs. This allows us to change and modify the 4 smaller sub programs without affecting the overall system.
  5. Dependency Inversion principle - Dependency Inversion principle states that high level classes should rely on low level classes they should instead both rely on abstractions. Typically this means creating an interface for actions that both a low level and high level class will perform. In our project this can be shown in the manager class with the daemonize method. All of our programs will need to be daemonized so that they run as processes and to make it simple we made a method that will allow any program to be daemonized with a unique process ID. If we hadn&#39;t done that in the manager program then it would need to be done in all of the smaller programs.
