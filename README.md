# Upcoming:

![231](https://github.com/K-izme/Jenkins-CICD-pipeline/assets/91515708/2f493fd4-c814-437b-838a-6e53041409ae)

```
npm i
npm run dev
localhost:5500
```
![image](https://github.com/K-izme/Login-registration-authentication/assets/91515708/57b2d8a8-4fb7-4656-a5d8-40719b4c35a2)

Install jenkins using docker

```
docker run -d  --name jenkins -p 8080:8080 -p 50000:50000 -v /kali-linux/var/jenkins/jenkins_cfg jenkins/jenkins:lts
```
```
docker logs <container id> 
```
=> get password of jenkins container

localhost:8080 

Using ngrok to public url to internet

Install for wsl2/linux
```
curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | sudo tee /etc/apt/sources.list.d/ngrok.list && sudo apt update && sudo apt install ngrok
```

```
ngrok http 8080
ngrok config add-authtoken <token>
```
Connect to jenkins via Internet

![image](https://github.com/K-izme/Jenkins-CICD-pipeline/assets/91515708/119cd018-78d5-4bba-9082-5b354fced2f8)

# Start:

Create ubuntu ec2 instance on Aws, install jenkins
```
sudo apt update
sudo apt install openjdk-11-jre
```
```
curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins
```
SG is stateful so edit inbound traffic

![image](https://github.com/K-izme/Jenkins-CICD-pipeline/assets/91515708/593824cb-d5aa-4644-9315-28e622ca3f59)

Run the command to copy the Jenkins Admin Password - sudo cat /var/lib/jenkins/secrets/initialAdminPassword 

Then

![image](https://github.com/K-izme/Jenkins-CICD-pipeline/assets/91515708/a4994c1a-bdae-436a-85e0-0eb76606a729)

# Using Sonarqube for code review

![image](https://github.com/K-izme/Jenkins-CICD-pipeline/assets/91515708/8d8c5632-6266-4309-a603-a1feed806f18)

```
apt install unzip
adduser sonarqube
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.4.0.54424.zip
unzip *
chmod -R 755 /home/sonarqube/sonarqube-9.4.0.54424
chown -R sonarqube:sonarqube /home/sonarqube/sonarqube-9.4.0.54424
cd sonarqube-9.4.0.54424/bin/linux-x86-64/
./sonar.sh start
```
Now sonar running on http://"ec2ipaddress":9000

Create token of Sonarqube => add credential in Jenkins

# Docker config

```
sudo apt update
sudo apt install docker.io
```
## Grant permission
```
sudo su - 
usermod -aG docker jenkins
usermod -aG docker ubuntu
systemctl restart docker
```
Then restart jenkins
```
http://<ec2-instance-public-ip>:8080/restart
```
