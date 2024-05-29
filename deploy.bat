if "%~1" == "" (
    echo "Error: Missing project name argument"
    exit /b 1
)

set bin-dir="bin"
set web-dir="web\*"
set lib-dir="lib"
set web-xml="config"

set target-name=%~1
set target-dir="C:\Program Files\Apache Software Foundation\Tomcat 10.1\webapps"

rmdir /q/s "temp"
mkdir "temp/WEB-INF"
mkdir "temp/WEB-INF/classes"
mkdir "temp/WEB-INF/lib"

echo D | xcopy /q/y/s %web-dir% "./temp/"
echo D | xcopy /q/s/y %bin-dir% "./temp/WEB-INF/classes"
echo D | xcopy /q/s/y %lib-dir% "./temp/WEB-INF/lib"
echo D | xcopy /q/y/s %web-xml% "./temp/WEB-INF/"

jar -cvf %target-name%.war -C temp/ .

echo D | xcopy /q/y %target-name%.war %target-dir%

del %target-name%.war
rmdir /q/s "temp"