@echo off
cls
echo "Hello World" application using Docker Image with Java and Maven
echo.
echo Step 1. Checking files...

if not exist scripts/script_hello.sh (
	echo File "script_hello.sh" not found
	goto end
)

cd ../application

if not exist src/main/java/ru/agapov/app/Hello.java (
	echo File "Hello.java" not found
	goto end
)

if not exist pom.xml (
	echo File "pom.xml" not found
	goto end
)


echo.
echo Step 2. Pulling docker image...
echo.

docker pull maven:3.6.3-openjdk-8-slim

echo.
echo Step 3. Running docker image...
echo.

docker run -it -v "%cd%/..:/mnt" maven:3.6.3-openjdk-8-slim /bin/sh /mnt/devops/scripts/script_hello.sh


: end
pause