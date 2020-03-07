# Deliverable 1 Inception

### 1. Introduction

Currently there is no good solution for hosting a rogue wireless access point. Our project is hoping to remedy this by providing an easy to use program/system that will host a rogue access point. “The LumberHack” will host a wifi access point that will require a user to enter their credentials into a captive portal in order to access the internet. These credentials will then be saved in a mySQL database along with some other usage information about the user


#### Existing software and API's used 

Software used for Access point hosting and server structure:
* Hostapd - Used for hosting an access point and 
* DNSmasq - Used for assigning IP addresses to new devices connecting
* Nginx - Hosts the captive portal 
* MySQL - Used as a database for storing credentials

### 2. Initial  value  proposition  and  consumer  segments
This system will allow the user to collect credentials from ignorant users. This will have very useful applications for red teams as well as anyone doing ethical hacking research.

### 3. Interview summaries
A brief summary of each interview conducted

1. Jason Buechler
    * Jason was confused at first, then started questioning the interviewer. What is that and why do we need it when there are so many softwares that do that already. Jason thought it was a great idea, and said a lot of companies would find it beneficial to their businesses and people do that a lot without the knowledge of users.
2. Kyler Carling
    * Kaelen interviewed Kyler on 2/10/2020. Kyler was very interested in the product. He was intrigued by its potential customizability when it came to the captive portal front end. More specifically he was interested in being able to change the front end based on the target group he was focusing on. Kyler also suggested having the system be supported off of a battery pack which allow for it to be more inconspicuous when placed in public. He also requested a GUI for changing configuration settings.
3. Ken Simmons
    * Kaelen interviewed Ken on 2/11/2020. Ken works as a system administrator so he doesn’t have the most use for this product. He did say that he would be more likely to use it if he was doing penetration testing. Ken also suggested that we should power it with a battery pack so that it can be hidden somewhere and collect information passively. This may be a “mode” that is implemented but will require extra coding due to needing to exfiltrate information.
4. Denise Bordon
    * I interviewed Denise Bordon on 2/12/20. Ms. Bordon was confused at first with how things were set up, though I changed how the software works in general terms so it's understandable for someone who isn't in the technology field. After that, she was intrigued to how it was designed and how it would function. Ms. Bordon was curious if the website would do more aside from
5. Audrey Schreiber
    * I interviewed Audrey Schriebr on 2/13/20. I told her that “product” isn't really a product rather a hacking tool. She was very intrigued by the idea of an open source hacking tool that can be used to dig up useful dirt on politicians or anybody in their district that aren't doing their job correctly and getting away with things they shouldn't be doing. Although she thinks this  could be useful in many businesses and companies.
6. Clinton Baker
    * I interviewed Clinton Baker 2/13/2020. At first, he thought it was an interesting concept. Clinton then began to question the mechanics behind the project and proceeded to ask why? Why would we do something like this and what would it accomplish. He finished off by asking about the security of something like this and how we would maintain the security behind a project such as this one.
7. Chris Night
    *  interviewed Chris Night on 2/12/2020. Chris was interested in the idea even though it doesn’t directly apply to his interests. He was mildly worried that it could be used to “for evil” as he put it. Chris also suggested that we build a GUI for a settings menu to make it more useable. He also suggested that if we do that then we should build a command line tool as well. That way it could be used with ssh.

### 4. Final  value  proposition  and  consumer  segments
LumberHack is the security professional's powerful solution to rogue AP hosting for traffic sniffing and harvesting credentials efficiently.
    