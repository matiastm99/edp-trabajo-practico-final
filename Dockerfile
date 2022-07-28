FROM ubuntu

#RUN apt-get update && apt-get upgrade -y
COPY ./app /home
#WORKDIR /home/defensa
#CMD ["bash", "menu.sh"]
