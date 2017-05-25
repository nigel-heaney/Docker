#!/usr/bin/python
import socket

hn=socket.gethostname()
#print "Content-type: text/html"
#print
print "<html>"
print '<h1><center>Node  <font color="red">' + hn + '</font>!</center>'
print "</html>"
