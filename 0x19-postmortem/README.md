# Server Failure Report

We had just released a new feature to our recently launched Ruby on Rails site that we had our first intake of users complaining about the site. 5 minutes after we performed a feature update, we started receiving emails from our users talking about "they can't sign in or sign up to our platform". It was quite surprising to us because we knew it worked on our machines and it worked before. About 127 of such emails came to our inbox. It was an avalanche of emails. Knowing how hard it can be to attract and keep users, we couldn't afford to lose 127 of our users in that way and decided to take a closer look at the problem. We cloned our site's repository from GitBug, followed the installation instructions on the README and to our surprise the site couldn't startup. It wasn't long before we realized that the cause of the problem was failing to update the requirements for our project. The site was malfunctioning from 9:55 AM GMT+1 to 11:20 AM GMT+1.

## Timeline
The error was realized on 25th of March 2:00 pm(GMT).
When pager notify one of our team members.
Our engineering team On-call quickly login to the server for further analysis and to get to the root of the problem.
The problem was solved later by 25th of March 3:00 pm (GMT).

## Root Cause and Resolution
The server stopped working because the config of the software(Nginx) serving the server pages is seen to be a directory instead of a symoblic link to another config file.
The config file(sites-enabled) was quickly deleted.
The config file(sites-enabled) is then made a symbolic link to the original config file(sites-available).
The server was restarted.
100% of traffic is back.

## Prevention against such problm in future
- Always test and thoroughly check the config files before deployment.
- ALways keep an eye on servers to ensure proper running of them.
- Always have backup severs to prevent all of our services from being down during an isuue.
