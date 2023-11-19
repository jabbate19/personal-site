---
title: Red Team Recruiting
git_url: https://github.com/jabbate19/red-team-recruiting
img_name: c2.png
order: 2
---
As part of the RITSEC Red Team Recruiting group, all members were tasked with creaeting a C2 (Command and Control) system. These consisted of a server software that would manage connections and send commands out to the clients, and client software to establish connections and execute any given command. Mine, written in python, was capable of executing shell commands and file upload/download. Alongside this, I wanted to find a fun way to interact with it that wasn't the command line. So, I made the command interface through a Skype chat! Each client gets its own "chat room" with the control account, with a large chat available to execute the same command on all clients.