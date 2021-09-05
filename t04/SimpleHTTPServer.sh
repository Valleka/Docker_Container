echo FROM python:3.8 > Dockerfile
echo ENV SRC_DIR /usr/bin/src/webapp/src >> Dockerfile
echo 'COPY * ${SRC_DIR}/' >> Dockerfile
echo 'WORKDIR ${SRC_DIR}' >> Dockerfile
echo ENV PYTHONUNBUFFERED=1 >> Dockerfile
echo 'CMD ["python", "server.py"]' >> Dockerfile
docker build . -t simple_server
docker run -p 8000:8000 simple_server




#docker run -it --rm --name my-running-script -v "$PWD":/usr/src/myapp -w /usr/src/myapp python:3.7-alpine  python server.py


# -it i — это сокращение для --interactive.
# Благодаря этому флагу поток STDIN поддерживается в открытом состоянии даже если контейнер к STDIN не подключён.
# -t — это сокращение для --tty.
# Благодаря этому флагу выделяется псевдотерминал, который соединяет используемый терминал с потоками STDIN и STDOUT контейнера
#Для того чтобы получить возможность взаимодействия с контейнером через терминал нужно совместно использовать флаги -i и -t
# --rm удаление остановленного контейнера
# --name
# -v
# -w
