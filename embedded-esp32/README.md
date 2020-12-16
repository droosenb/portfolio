# ESP-32 Embedded Faust Project (2019 - Present)

## Overview

Working on the ESP-32 to create embedded audio effects was the subject of my Junior project for my TIMARA (Technology in Music and Related Arts) major. 
The project seeks to create an easy to use and affordable platform for real-time embedded low-latency audio effects on a microcontroller. 
It is part of a larger project working to run Faust code on various embedded platforms. An overveiw of the project can be found. 
Included, find a paper detailing a broad overview of the project, Michon et. al. *Embedded Real-Time Audio Signal Processing with Faust*, which was presented and IFC20 (International Faust Conference 2020).

I worked to create arcitectural C++ code which would extend the capabilitiles of the ESP-32 in various ways.
Many of the elements included here have been integrated into the Faust architectures (found [here](https://github.com/grame-cncm/faust)) and were designed to be accesed automatically during compilation. 

## OSC over WiFi

A major project of mine was to create a method allowing parameter control of the DSP algorithim through Open Sound Control (OSC). 
By setting up the ESP-32 as a udp server connected to a wifi network, it allows OSC applications to send control signals to the ESP-32. 
This allows for easy creation of networked audio effects or sources at a price of $10 per channel / $20 per node. 
Furthermore, it allows for simple computer-based parameter control of each node using a programs such as Max MSP or Pure Data. 

This project was the subject of my Junior Presentation "Making Microcontrollers Sing: Embedded Audio on the ESP32", whos slides I have included for reference. 

I have implemented this in my personal free-improvisation setup as a rapid prototyping method for digital pedals. 
I create audio effects in Faust, embed them on the ESP-32, and then control them using Max MSP. Thus, I can test various audio effects with no investment of hardware. 
Shown [here](https://photos.app.goo.gl/VBJGEGQxdWUHnu1MA) is a simple video demonstration of a reverb effect running within my setup. 

Integration of the OSC code into existing Faust Architectures is currently pending. 

## i2c Drivers

Another of my major contributions was the writing of various i2c drivers. These drivers allow for the support of additional audio development platforms and functionality. 

I worked to write a es8388 driver, which allows the support of the [LyraT](https://www.mouser.com/ProductDetail/Espressif-Systems/ESP32-LyraT?qs=MLItCLRbWsxPzPCja546ZA%3D%3D) within the Faust architectures, an audio development board designed by [espressif](https://www.mouser.com/manufacturer/espressif/). 
The current implementation can be found [here](https://github.com/grame-cncm/faust/tree/master-dev/architecture/esp32/drivers).

I also developed a driver for the MPU9250, an accelerometer found on the [TTGO-Taudio](https://github.com/LilyGO/TTGO-TAudio), another audio development board.
This code has been implementaed as part of the [Gramophone project](https://www.amstramgrame.fr/) (link in French). The project seeks to introduce DSP programming to young-adults in primary school. 
