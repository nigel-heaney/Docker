#!/usr/bin/env python
 
import BaseHTTPServer
from SimpleHTTPServer import SimpleHTTPRequestHandler
#import CGIHTTPServer
#import cgitb; cgitb.enable()  ## This line enables CGI error reporting
protocol     = "HTTP/1.0" 
handler = SimpleHTTPRequestHandler
server = BaseHTTPServer.HTTPServer
#handler = CGIHTTPServer.CGIHTTPRequestHandler
server_address = ("", 8000)
#handler.cgi_directories = ["/"]
handler.protocol_version = protocol 

httpd = server(server_address, handler)
httpd.serve_forever()

