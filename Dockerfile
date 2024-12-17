FROM        alpine:edge 

RUN         apk add --no-cache --update ffmpeg 
RUN  apk add --no-cache --update nodejs 
RUN  apk add --no-cache --update pulseaudio pulseaudio-alsa xvfb pulseaudio-utils
RUN  apk add --no-cache --update bash 
 RUN  apk add --no-cache --update chromium  
RUN adduser root pulse-access
#nodejs-npm
RUN node -v
RUN ffmpeg -version 
# RUN firefox -v
COPY x1.sh /x1.sh
RUN chmod +x /x1.sh
RUN  mkdir  /api
COPY app.js /api/app.js
# RUN mkdir -p /data && adduser -D chrome \
#     && chown -R chrome:chrome /data
# RUN adduser chrome pulse-access    
#USER chrome
#COPY /recorderApi/ /api/
#RUN ls /api/

#RUN chmod -R 777 /api/public/recordfile
#RUN ls /api/
 
#EXPOSE 3000
ENTRYPOINT ["./x1.sh"]