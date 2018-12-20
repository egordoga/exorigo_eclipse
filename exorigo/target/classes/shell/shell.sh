#!/bin/bash

mv E:/Java/Progects2018/exUpos/out/artifacts/exUpos_Web/exUpos_Web.war c:/Servers/apache-tomcat-8.5.35/webapps/exUpos_Web.war
#c:/Servers/apache-tomcat-8.5.35/bin/shutdown.sh
sleep 1
c:/Servers/apache-tomcat-8.5.35/bin/startup.sh
sleep 1
xdg -open http://localhost:8080/exUpos_Web