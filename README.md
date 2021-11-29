# imago-dl
A script to batch download pictures from imago-images

This script is not about downloading pictures without having a payment account. This script only works when you are logged in as a user.
It is a solution to download a list of imago-images without having to search and click every single image by hand. Imago-images don't offer a solution.
In addition: the internal counter for downloaded images of your account increases normally. 

You need to find your cookie information. Sometimes there are more cookies, so you have to try them out.
If the downloaded files are only 114KB in size, something went wrong with the authentification.

A parameter is needed in order to work. A comma-seperated CSV-File. First column picture ID, second column a name with which the picture is going to be saved. 

Run the script on windows commandline: imago-dl imago.csv
