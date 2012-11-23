
java -jar DITA-OT1.5.4-ez\lib\dost.jar /i:%1 /transtype:pdf /ditadir:%CD%\DITA-OT1.5.4-ez
copy out\*.pdf docs\
copy out\*.log logs\
rmdir /s /q out
rmdir /s /q temp
