FROM ubuntu

RUN sudo apt-get update && sudo apt-get upgrade -y
COPY ./app /home/defensa
#WORKDIR /home/defensa
#CMD ["bash", "menu.sh"]
