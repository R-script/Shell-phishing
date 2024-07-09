# Shell-phishing
A FLOSS repository for phishing using UNIX for internal pen-testing

The purpose of this is to provide users that share a network with instant feedback of a phishing attempt from the systems admin.

The InstallUpdates.sh file along with sending user info to the admin, legitimately updates all of the apps on the users computer.

For emailing this code to a user, instructions must be provided using social-engineering.
1. User must run the InstallUpdates.sh file from the location stored on the server using "sh InstallUpdates.sh".
2. To install the full attacker/victim package , use "git clone https://github.com/R-script/Shell-phishing"
3. Place the InstallUpdates.sh file in an accessible location to user.
4. Admin runs attacker.sh and waits for users to click the link.
