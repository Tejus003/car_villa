# pull the httpd base docker image
FROM httpd:latest

# person who is maintinaing it 
MAINTAINER "r.tejus003@gmail.com"


# copy the car villa application file from source to destination httpd conatiner location 
COPY  ./ /usr/local/apache2/htdocs/
