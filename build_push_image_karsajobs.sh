docker build -t karsajobs:latest .
docker tag karsajobs:latest fuadariqoh/karsajobs:latest
echo $PASSWORD_DOCKER_HUB | docker login -u fuadariqoh --password-stdin
docker push fuadariqoh/karsajobs:latest