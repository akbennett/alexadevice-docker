FROM opensourcefoundries/minideb:stretch

ENV LANG C.UTF-8

RUN install_packages wget build-essential python3-dev python3-pip git alsa-utils ffmpeg swig libportaudio2 pulseaudio pavucontrol portaudio19-dev libpulse-dev
RUN pip3 install setuptools wheel
RUN pip3 install requests zeroconf pocketsphinx pyaudio
RUN pip3 install 'git+https://github.com/moaxey/python-zeroconf'

RUN git clone https://github.com/devicehive/AlexaDevice
RUN wget http://www.sample-videos.com/audio/mp3/crowd-cheering.mp3 -O /test.mp3
