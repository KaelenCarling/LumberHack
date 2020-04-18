# D5. Design

## 1. Description:
In Group 4 we have decided to create a system called LumberHack. The LumberHack will host a rogue access point that directs the operator to a “dummy site”. The user will be taken to a page that acts as a login page that will harvest their credentials. By gathering their information it will be stored into a database. Our product is supposed to be used as a tool that allows LumberHack which is a rogue access point to let the user harvest credentials by using a fake captive portal to gain knowledge and to improve security for big companies if they have any security flaws. The features specified in the MVP: in the deliverable 2 we have specified that our MVP was going to be developed by working on the frontend and backend of the portals. By building the captive portals for the users to use to insert their login credentials allows us to add features and test integration.

**Trello =** https://trello.com/invite/b/QdXw0UKb/b24ae93df8d9fc00d48f82204c775af6/lumberhacks-cs-386

**Github link =** https://github.com/KaelenCarling/LumberHack

## 2. Implemented requirements:
**Issues:** The dilemma is trying to find a solid solution for hosting a rogue access point that doesn't have an option of supporting credential harvesting. This makes information security professionals unable to test organizations on how difficult it is by not having this tool.  

**User Stories:** “As a developer, I want to make an accessible website for users to insert their credentials.” “As a recipe contributor, I want to see the rogue access point to collect information about a user so that I can use it for research for ethical hackers.” “As a business, I want to be able to have access to the user’s credentials.”

### Google Front End
 * https://trello.com/c/Q5KhmNey
 * Malik Jones, https://github.com/KaelenCarling/LumberHack/tree/master/CaptivePortals 
 * Lexxi Smith
 * Google Front End
 
### Credential Scraping Backend
 * https://trello.com/c/vV5fCxJr
 * Kaelen Carling,  https://github.com/KaelenCarling/LumberHack/blob/master/Lumberhack.sh 
 * Kristine Hermosado
 * Screenshot = Not Relevant

 ### DHCP server and config
 * https://trello.com/c/1PoCp8cp
 * Kaelen Carling, https://github.com/KaelenCarling/LumberHack/blob/master/dnsmasq.conf
 * Kaelen Carling
 * Screenshot = Not Relevant

 ### Hostapd and Nginx
 * https://trello.com/c/DqF1WXnc
 * Kaelen Carling, https://github.com/KaelenCarling/LumberHack/blob/master/hostapd.conf
 * Kaelen Carling
 * Screenshot = not Relevant

 ### SQl server script Interface
 * https://trello.com/c/hBySEUqJ
 * Kaelen Carling, https://github.com/KaelenCarling/LumberHack/blob/master/sqlCredential.sh
 * Kaelen Carling
 * Screenshot = not Relevant

 ### mySQL server
 * https://trello.com/c/uok9LsPz
 * Kaelen Carling, https://github.com/KaelenCarling/LumberHack/blob/master/sqlCredential.sh
 * Kaelen Carling
 * Screenshot = not Relevant

## 3. Demo
Link: https://youtu.be/M3gPbOXUtHA

## 4. Code Quality
When writing our code we had to follow basic rules when managing our code quality. First, we followed proper naming conventions when creating different files with our project. We took upon ourselves to not use names such as “this” and “site_thing”. When naming our files we made sure to use names that would properly explain what each program did.  Another practice that we began following was in our scripts we made sure to comment where necessary, well documented code helps a reader to understand what the code is attempting to do and helps in the debugging process. Then another coding practice we followed is spacing, we made sure that everything was lined up with it’s grouping so that it would be easier to follow. Then finally, we made sure to follow the DRY principles. The dry principle states that we shouldn’t repeat ourselves, so to avoid this we looked over our code and if we ever wrote the same code twice we would have to write a function to do that for us.

## 5. Lesson Learned
We have learned throughout the process of making this LumberHack that this is mostly a tool rather a product that doesn't have fancy features to catch a client's eye.  Although it might not catch a client's eye it was  very interesting to create servers and build captive portals for the user to insert their information and harvest those credentials to store them into a database. By creating all different types of diagrams after our first release help us analyze more in depth on how our product would function.  We realize that there are many classes and methods that extend to one another to make the system function properly. While examining all the new types of diagrams that we can use for our product we have learned we can see in detail how everything works and what every class does and what is going on in the background during the user is inserting their credentials to access the portal. Overall, by our tool being released for the second time as a prototype we feel our tool is useful for business to improve some security flaws and as a group there really aren't many changes we can do if we continue developing on this project.
