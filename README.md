# Shell-phishing
A FLOSS repository for phishing using UNIX for internal pen-testing

The purpose of this is to provide users that share a network with instant feedback of a phishing attempt from the systems admin.
The `InstallUpdates.sh` file may be edited to retrieve more or less information. By default the username and date/time is sent to the admin.

The `InstallUpdates.sh` file legitimately updates all of the apps on the users computer.

## System admin steps:

For emailing this code to a user, instructions must be provided using social engineering (see `emailExample.txt`).
The email should include delivery receipt to know if the `.sh` file was not run on the users computer.
1. Copy the GitHub repository using
```
$ sudo git clone https://github.com/R-script/Shell-phishing
```
1. Move the `InstallUpdates.sh` file to an accessible location for the user.
```
$ sudo cp InstallUpdates.sh /dev
```
1. Edit permissions of the `InstallUpdates.sh` file so that the user can run it.
```
$ sudo chmod 777 /dev/InstallUpdates.sh
```
1. After software is installed correctly run `sudo sh attacker.sh` and wait for the user to run the phishing program.
![alt text](https://github.com/R-script/Shell-phishing/blob/main/attacker.png?raw=true)
1. Listening will automatically terminate if the user info is retrieved.
1. To see the users information run `cat userInfo.txt`
![alt text](https://github.com/R-script/Shell-phishing/blob/main/SuccessfulPhish.png?raw=true)
1. If the user has not run the file, ctrl+c will exit the port listening.
1. Email delivery receipt should be checked externally to verify the user has not run the commands.

## User steps: 

1. User must run the `InstallUpdates.sh` file from the location stored on the server using
```
$ sh /dev/InstallUpdates.sh
```
1. The user must then enter their password to run the file
![alt text](https://github.com/R-script/Shell-phishing/blob/main/UserRunsCmd.png?raw=true)
1. If the command is run the user is presented with a banner to "See System Admin"
![alt text](https://github.com/R-script/Shell-phishing/blob/main/informUser.png?raw=true)
1. Users information is automatically stored in the `userInfo.txt` file in the location that `attacker.sh` was run from.
