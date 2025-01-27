# Examination-sitting-Plan

Below is the steps to run Java Application 
____________________________________________

Open Eclipse and go to File → Import.
Select Git → Projects from Git and click Next.
Choose Clone URI, enter the repository URL, and authenticate.
Select the repository branch and click Next.
Choose the destination folder and click Next.
Select the project to import and click Finish.
If needed, configure the Java Build Path.
Right-click the project and select Run As → Java Application.


Install Apache Tomcat in Eclipse
_________________________________

Open Eclipse.
Go to Window → Preferences.
In the Preferences window, go to Server → Runtime Environments.
Click Add Runtime.
Select Apache Tomcat v9.0 or below then 10.x and later because(Java EE 8 is the last version that uses the javax namespace. Therefore, Tomcat 9.x is suitable for projects that are built using Java EE 8 APIs and Tomcat 10.x and later are compatible with Jakarta EE 9 and Jakarta EE 10, so if you're building applications with Jakarta EE, you will need Apache Tomcat 10.x or above.) or above but below then from the list and click Next.
Browse and select the directory where you installed Apache Tomcat (e.g., C:\apache-tomcat-9.0.x).
Click Finish.




