@echo off 
:: This script is not about download pictures without having a payment account. This script only works when you are logged in as a user.
:: It is a solution to download a list of imago-images without having to search and click every single image by hand. Imago-images don't offer a solution.
:: In addition: the internal counter for downloaded images of your account increases normally. 
::
:: You need to find your cookie information. Sometimes there are more cookies, so you have to try them out.
:: If the downloaded files are only 114KB in size, something went wrong with the authentification.
::
:: A parameter is needed in order to work. A comma-seperated CSV-File. First column picture ID, second column a name with which the picture is going to be saved.
:: 
set cookie=ASPSESSIONIDCGRRTBDS=KGBLLGCCEDCNFPGNKHOJLEJH

IF [%1]==[] GOTO NoFileSelected

echo Start to download imago-images.de...

for /f "usebackq tokens=1-2 delims=," %%a in (%1) do (
      curl -X POST -H "GET /bilddirekt/st/"%%a"/h HTTP/2" -H "Host: www.imago-images.de" -H "DNT: 1" -H "Cookie: "%cookie%";" -H "Upgrade-Insecure-Requests: 1" -H "Sec-Fetch-Dest: document" -H "Sec-Fetch-Mode: navigate" -H "Sec-Fetch-Site: same-origin" -H "Sec-Fetch-User: ?1" -H "Sec-GPC: 1" -H "TE: trailers" -d "" "https://www.imago-images.de/bilddirekt/st/"%%a"/h" --output "%%b.jpg"
      )
goto:eof

:NoFileSelected
echo Error: CSV-File as parameter needed. I.e. imago-dl imago.csv
