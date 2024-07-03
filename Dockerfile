# you can save the files you want to replace to a folder, then copy it into to the docker
# using the latest build of the official docker
FROM asdlokj1qpi23/subconverter:latest
# assume your files are inside replacements/
# subconverter folder is located in /base/, which has the same structure as the base/ folder in the repository
COPY replacements/ /base/
# expose internal port
EXPOSE 27700
# notice that you still need to use '-p 25500:25500' when starting the docker to forward this port
