docker run -it --name teste-volume --mount type=bind,source=/home/yohrannes/repos-git/devops-base-linuxtips/day18,target=/giropops-senhas debian




docker run -it --name teste-volume --mount type=bind,source=/home/yohrannes/repos-git/devops-base-linuxtips/day18,target=/giropops-senhas,ro debian



##
docker volume create giropops
docker volume ls
docker volume inspect giropops
sudo su
cd /var/lib/docker/volumes/giropops/_data/index.html
docker run -d --name web-1 --mount type=volume,source=giropops,target=/usr/share/nginx/html -p 8080:80 nginx
docker run -d --name web-2 --mount type=volume,source=giropops,target=/usr/share/nginx/html -p 8081:80 nginx
