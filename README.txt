This is Tournament application v.1.0
====================================
Prerequisites:
- Installed Python v2.7.x
- Installed PostgreSQL 9.3.x
====================================
To work with DB and application:
- Download Tournament.zip file and unzip it.
- Create database: CREATE DATABASE tournament;
- Connect to database and run tournament.sql: \i tournament.sql
====================================
What are included:
Tournament/
|- tournament.sql
|- tournament.py
|- tournament_test.py
|- README.txt
====================================
Main functionality:
- Register/Delete/Count players
- Report/Delete matches
- Return the standings based on the current status
- Initial version for Swiss Pairing:
Based on the registered users list and their current standings, new tour matches are generated.
====================================
To run tests:
- Run tournament_test.py
====================================
Creator:
Nadiia Lukianenko: Nadiia.Lukianenko@gmail.com
