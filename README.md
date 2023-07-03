
Try following the commands on the bash file that where extracted from this
article that you **HAVE TO READ** or shit will go sideways 100%

https://bcacciaaudio.com/2018/01/30/audio-music-production-in-linux-part-1-setting-up-jack-audio/

**Configure the rest using youtube video**  
https://www.youtube.com/watch?v=UwMqXwDpL1k

**Troubleshoot**
1) If you get no sound check for usb card input (Ex. USB in input/output)
   and wiring of "System" in cadence settings

2) If you're using a Scarlett2i2 external USB sound card, make sure to set
   channel 1 and 2 to "inst" (for instrument) in the hardware card switch.
   

**Virtual Wire**

![Screenshot from 2023-07-03 05-05-49](https://github.com/Embdsys/Guitar-setup-Ubuntu/assets/86981025/48e14196-54aa-40ac-8238-b32e2c9ef070)

When you open GuitarX it will attempt to open Jack. Regardless of if it fails go to the Jack screen shown here
   - Click GRAPH on the bottom left to show virtual wires (Necessary to route audion from guitar Input to Laptop speaker output)

![Screenshot from 2023-07-03 05-04-45](https://github.com/Embdsys/Guitar-setup-Ubuntu/assets/86981025/650c625f-002c-4866-927c-b9b0e435d5c7)

   - Click SETUP on the right to select the input devices[hw:PCH], interfase [hw:USB], sample rate[44100], FrameRate[1024], Peiords/Buffer[2]

![Screenshot from 2023-07-03 05-10-01](https://github.com/Embdsys/Guitar-setup-Ubuntu/assets/86981025/358a62e2-d74d-41ca-9889-4b2051d9c04c)

   - Note the ADVANCED tab

![Screenshot from 2023-07-03 05-05-13](https://github.com/Embdsys/Guitar-setup-Ubuntu/assets/86981025/fa62bfbf-1988-4c62-bd5d-dbc660ea6a19)

