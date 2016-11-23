FROM java:7

ENV FOO bar
WORKDIR /home/root/helloworld/
#RUN mkdir bin
RUN mkdir /data/myvol -p
RUN echo "put some texte here" > /data/myvol/test
Volume /data/myvol 
#COPY HelloWorld.java /home/root/helloworld/src/
#RUN javac -d bin src/HelloWorld.java
#ENTRYPOINT ["bash"]
EXPOSE 80 8080
