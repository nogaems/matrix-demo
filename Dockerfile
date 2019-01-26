FROM nogaems/weechat-matrix:latest
ENV USER=user
ENV HOME="/home/${USER}/"
WORKDIR $HOME
USER $USER
COPY howto ./
COPY commands ./
COPY demo.sh ./
CMD ./demo.sh
