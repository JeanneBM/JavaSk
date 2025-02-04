winpty docker run --name tomcat -it --rm -p 8888:8080 -d tomcat
winpty docker run --name sonar -it --rm -p 9000:9000 -d sonarqube
winpty docker run --name nexus -it --rm -p 8081:8081 -d sonatype/nexus3
winpty docker run --name selenium_hub -it --rm -p 4441:4441 -d selenium/hub:4.1.0-20211209
winpty docker run --name selenium_node_firefox -it --rm -p 4442:4442 -d selenium/standalone-firefox:4.1.0-20211209
winpty docker run --name selenium_node_chrom -it --rm -p 4444:4444 -d selenium/standalone-chrome:4.1.0-20211209
winpty docker run --name Jenkins -it --rm  -p 8080:8080 -p 50000:50000 -d -v /c/Users/.../app/jenkins:/var/jenkins_home jenkins/jenkins
#8080 to manage Jenkins, 50000 for builds.
docker network create -d bridge docker_env_network
winpty docker run -it --rm --net docker_env_network --name dockernginx -d nginx

#docker pull jenkins/jenkins
#docker run -p 8080:8080 --name=jenkins-master -d jenkins/jenkins
#winpty docker run --name sonar -it --restart always -p 9000:9000 -d sonarqube
