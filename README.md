# PrimeTimeProofs
This is the repository for all queries used on our channel PrimeTimeProofs: https://www.youtube.com/@PrimeTimeProofs  

Prime Time Proofs is a channel dedicated to verifying sports statistics from videos, tiktoks, twitter, and TV with the help of SQL. We've made our own database with (almost) every NFL stat in existence with the help of nflreadr and Pro Football Reference.

Back-end database:  
-Azure SQL Database - Free Tier  
-Microsoft Entra for validation

Lesson Learned:  
-Azure SQL Database vCore hours use is clock-based and not usage-based. This means 12 hours free usage is 11AM to 11PM even if it is sitting idle.  
-Set up budget alert for unforeseen billing.

