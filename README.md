Upcoming:

![231](https://github.com/K-izme/Jenkins-CICD-pipeline/assets/91515708/2f493fd4-c814-437b-838a-6e53041409ae)

```
npm i
npm run dev
localhost:5500
```
![image](https://github.com/K-izme/Login-registration-authentication/assets/91515708/57b2d8a8-4fb7-4656-a5d8-40719b4c35a2)

Install jenkins

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
