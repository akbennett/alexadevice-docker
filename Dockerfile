FROM opensourcefoundries/minideb:stretch

ENV LANG C.UTF-8

RUN install_packages python3-pip git ffmpeg swig libportaudio2 portaudio19-dev
RUN pip3 install setuptools
RUN pip3 install requests
#RUN pip3 install 'git+https://github.com/moaxey/python-zeroconf'
#RUN pip3 install 'git+https://github.com/jstasiak/python-zeroconf'
RUN pip3 install 'git+https://github.com/daid/python-zeroconf'

RUN pip3 install pocketsphinx pyaudio 
#Note libpulse-dev should be sinsalled for pulseaudio devices, may need
# pyaduio, libportaudio2 or portaudio19-dev ...

RUN git clone https://github.com/devicehive/AlexaDevice


