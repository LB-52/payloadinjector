# first import the module
import os
import webbrowser
import array as arr

# then make a url variable
a = "sm"
#url = "https://google.com/" 
# then call the default open method described above
#webbrowser.open(url);
a1 = ".//"
url = input("enter the url :")
payloads = input("enter payloads :" )
os.system("firefox "+url+payloads)

