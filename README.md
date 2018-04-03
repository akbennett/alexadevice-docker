# pulseaudio and alsa utilities in a container
docker build -t akbennett/alexa .
docker run --rm -ti -p 4713:4713 --name=alexa  \
 --device=/dev/snd/controlC0  \
 --device=/dev/snd/controlC1  \
 --device=/dev/snd/controlC2  \
 --device=/dev/snd/pcmC0D0p   \
 --device=/dev/snd/pcmC1D0c   \
 --device=/dev/snd/pcmC2D0p   \
 --device=/dev/snd/pcmC2D1p   \
 --device=/dev/snd/timer      \
 --device=/dev/snd/seq        \
 akbennett/alexa  bash

# query the alsa devices
```
aplay -l
arecord -l
```
