docker build -t karsajobs-ui:latest .
docker tag karsajobs-ui:latest fuadariqoh/karsajobs-ui:latest
echo $PASSWORD_DOCKER_HUB | docker login -u fuadariqoh --password-stdin
docker push fuadariqoh/karsajobs-ui:latest