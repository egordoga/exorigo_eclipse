set CATALINA_HOME=C:\Servers\apache-tomcat-8.5.35
start /b c:\Servers\apache-tomcat-8.5.35\bin\startup.bat
curl -T "E:\Java\Progects2018\exUpos\out\artifacts\exUpos_Web\exUpos_Web.war" "http://tomcat:tomcat@localhost:8080/manager/text/deploy?path=/exorigo&update=true"
::sleep 10
start http://localhost:8080/exorigo