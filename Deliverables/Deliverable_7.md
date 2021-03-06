# D7. Verification and Validation

## 1. Description:
In Group 4 we have decided to create a system called LumberHack.The LumberHack's purpose is to provide a system that hosts a rogue access point that directs the user to a “dummy site”. The user will be taken to a page that acts as a login page that will harvest their credentials. By gathering their information it will be stored into a database. Our product is more a tool that is supposed to allow LumberHack which is a rogue access point to let the user harvest credentials by using a fake captive portal to gain knowledge and to improve security for well known big companies if they have any security flaws. 

The key requirement to make our system function properly is by having a database that stores the credentials that the user is harvesting from the login captive portals which can be a CAS, Google or Generic that will be hosted as an access point that looks like a rogue access point. The user will have an option for starting the LumberHack on boot and use the command-line interface for parameters to start up or shutdown. Operator's are people accessing the LumberHack and collecting the credentials. As for the targets, it is the people who are going to enter their credentials into the captive portal. Overall this tool should be used as a tool to help to improve security flaws in well known big companies. 

## 2. Verification:

### Unit Test
 * Test Framework - Bats: https://github.com/bats-core/bats-core
 * Github Link to testing folder: https://github.com/KaelenCarling/LumberHack/tree/master/Tests
 * Class being tested: https://github.com/KaelenCarling/LumberHack/blob/master/sqlCredential.sh
 * Testing Class:![Unit test](https://github.com/KaelenCarling/LumberHack/blob/master/Pictures/Unit%20Test.png)
 
### Integration Test
 * Test Framework - Bats: https://github.com/bats-core/bats-core
 * Github Link to testing folder: https://github.com/KaelenCarling/LumberHack/tree/master/Tests
 * Class being tested: https://github.com/KaelenCarling/LumberHack/blob/master/Lumberhack.sh
 * Testing Class:![Integration Test](https://github.com/KaelenCarling/LumberHack/blob/master/Pictures/Integration%20Test.png)
 
### Acceptance Test
 * Test Framework - Bats: https://github.com/bats-core/bats-core
 * Github Link to testing folder: https://github.com/KaelenCarling/LumberHack/tree/master/Tests
 * Example of test = In this test we tested whether the captive portal would be able to submit a username in the html form as a     post request
 * Print Screen:![Acceptance Test](https://github.com/KaelenCarling/LumberHack/blob/master/Pictures/acceptance%20test.png)
 
## Validation
### Script:
1. How long did you work with the LumberHack?
2. What did you do/test with the LumberHack?
3. What were your opinions of the LumberHack as an operator of a system?
4. Would you use the LumberHack to host a Rogue Access point?
5. Which captive portal did you prefer to use?
6. What was your favorite feature of the LumberHack?
7. What was your least favorite aspect of the LumberHack?
8. Do you have any other suggestions/comments?

### Results:
**Kyler Interview**
* How long did you work with the LumberHack?
  * I helped a bit in development with setting up the raspberry pi that it runs on but today I worked with it for about 2 hours.
* What did you do/test with the LumberHack
  * I set up a captive portal on the fake wifi network that looked like a google login and tested inputting credentials. I also tested if I the system sanitized it’s inputs with some SQL injection into the username and password boxes.
* What were your opinions of the operations of LumberHack?
  * It wasn’t the most feature complete system I have ever worked with but it was very powerful and reliable.
* Would you use the LumberHack to host a Rogue Access point?
  * Yes I would. It seems pretty useful for doing spear phishing attacks against specific targets.
* Which captive portal did you prefer to use?
  * The google one seemed the most universal so probably that one.
* What was your favorite feature of the LumberHack?
  * The fact that it could deploy just by being booted up.
* What was your least favorite aspect of the LumberHack
  * It’s lack of a configuration menu for settings is annoying since there’s lots of configs to manage.
* Do you have any other suggestions/comments?
  * Add a settings configuration menu.

**Matthew Interview**
* How long did you work with the LumberHack?
  * For about 30 minutes
* What did you do/test with the LumberHack
  * I tested hosting an identical version of my home network. It was pretty convincing
* What were your opinions of the operations of LumberHack?
  * It seemed pretty powerful but I wish there was a windows version
* Would you use the LumberHack to host a Rogue Access point?
  * I don't really have a use for it specifically but it would definitely be my first choice.
* Which captive portal did you prefer to use?
  * I used the google one and that seemed pretty useful. If I was to use it myself then I would probably make/download my own captive portal.
* What was your favorite feature of the LumberHack?
  * It's small form factor and the fact that it's battery operated.
* What was your least favorite aspect of the LumberHack
  * The fact that it only supports linux
* Do you have any other suggestions/comments?
  * Make a windows port and maybe more captive portals

**ken Interview**
* How long did you work with the LumberHack?
  * I messed with it for about an hour today.
* What did you do/test with the LumberHack
  * I spent most of the time setting it up and getting my adapter working.
* What were your opinions of the operations of LumberHack?
  * It seems a pretty powerful once you set it up. The worst part about it is setting it up.
* Would you use the LumberHack to host a Rogue Access point?
  * Yes. My job doesn't really need me to anymore though.
* Which captive portal did you prefer to use?
  * I liked the router configuration menu. It seemed like it would be great for spearfishing IT professionals
* What was your favorite feature of the LumberHack?
  * I'd probably say the premade captive portals. The ability to choose a custom portal for who your targeting is rather unique.
* What was your least favorite aspect of the LumberHack
  * The fact that it doesn't auto configure my adapter for me. And that it currently requires an adapter.
* Do you have any other suggestions/comments?
  * It could use a little fine tuning but it's pretty good as is.

### Reflections
 * What features worked well?
   * The actual credential scraping performs really well. It's very smooth is almost undetectable on the user's end.
 * What can be changed?
   * There could be more captive portals to choose from and making a menu to select the portal you want. also I would like to change the start up script to be a little less resource intensive
 * How is the learning curve of your system?
   * Set up is difficult because the operator has to put their own device into monitor mode as we can't do that for them
 * Did the users perform the tasks as you expected?
   * For the most part they did what I thought they would. Matthew made his own access point for the LumberHack which He is intending to add to the project as a collaborator.
 * Did the users’ actions produce the results  they  expected?
   * For the most part. Kyler messed around with some SQL injection in the captive portal which had some wonky effects on the backend. Other than that the actions taken gave the behaviour expected.
 * What did the users like the most?
   * They liked the multiple captive portals. Specifically they like being able to switch them on the fly.
 * Is your value proposition accomplished?
   * Yes our value proposition has been accomplished. In fact we kind of exceeded it by providing multiple front ends for the captive portal.
