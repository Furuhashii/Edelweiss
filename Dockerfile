# We're using Ubuntu 20.10
FROM Edelweiss/docker:latest

#
# Clone repo and prepare working directory
#
RUN git clone -b Edelweiss-extended https://github.com/Furuhashii/Edelweiss
RUN mkdir /root/userbot/.bin
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/Zora24/Lord-Userbot/Lord-Userbot/requirements.txt

CMD ["python3","-m","userbot"]

