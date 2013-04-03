recordDesktop
=============

This is a script that runs on Linux platform and uses the program "recordMyDesktop". Its primarily porpose is to record the desktop activity and save it every 1 hour until the recording reaches a total of five hours. It also has the option to set the default number of hours to be recorded.

Example:
./record_desktop.pl [applicant's name (no space)] [hour limit (default is 5 hours)]
./record_desktop.pl Juan_Dela_Cruz 6

Note:
* Recorded videos will be saved at /home/$user/ (interviewee's pc)
* The recording will be chopped every 1 hour
* When the hour limit is over, a message '------ DONE RECORDING ------' will show.
* When the interviewee is finish, just press Ctrl C to normally terminate the script and the recording.
