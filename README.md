assignment1: dockerfile is written. java and tomact8 not installed through yum


que:Write the command to run the Dockerfile such that once the container boots, apache tomcat's home page is accessible from the host on port 7080.


solution:     "dockdr run -d -p 7080:8080  <image_name>"


explaination: it will expose containers internal port 8080 to outside(host) port 7080. now we can access tomact in host at port 7080


assigment2: script written named as login.sh
explaination:  run script like this "sh login.sh 192.168.0.51,192.168.0.56"



assignement3: i dont have handson experience in AWS.but i dedicately worked on kubernetes,ansible,jenkins,docker. So, I proposed a solution using these technologies.





