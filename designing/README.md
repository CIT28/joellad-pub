# Week 12 Attendance

-   Answer how can we reference the different version of the longlist.db without copying it to the designing folder?

Answer :  My guess is to use a back slash, similar to a website. 
sqlite3 ps0/cyberchase.db < p4-q.sql
correct - bash command (for reference): 
sqlite3 ../querying/longlist.db < w12-q.sql
../ exits the designing folder.
The terminal must be in the BASH designing folder to pull database. 