# Wave Digital Modeling Library

## Overview

Wave digital models are the subject of my current research. The provide a method for creating virtual-analog models of circuitry which can run in real-time. The use a "voltage wave" perspective to describe the circuit. Simple components are defined as adaptors, such as resistors, capacitors, diodes, etc, and then combined with linking elements which describe the topology of the circuit. For details on the method see Kurt Werner's thesis, 

Prior to this library, implementations of wave digital models were limited to Matlab and C++. Matlab cannot perform real-time audio computation; furthermore, real-time audio implementation in C++ has a very steep learning curve and remains inaccessible to non-audio programmers, i.e. artists. Thus, the technique has largely found use among professionals and academics. 

Faust, while currently not widely used, provides a platform that is accessible to both artists and audio programmers. It is also capable of generating code which is optimized enough to run even complex algorithms in real time. This library presents an easy way for artists to create, prototype, and circuit-bend wave digital models. 

## Examples

Video demos coming soon! 

For code, please see the linked submodule, the github of my larger project. 

## Novel Developments

In order to create a wave digital modeling library in Faust, I had to develop a new implementation. Most implementations in C++ involve deceleration of the connection tree. At runtime, a full tree traversal must be performed in order to compute a single sample. 

In Faust, I used functional programming and Faust's block diagram algebra (BDA) to create a "meta-language" within Faust which describes the tree structure. The user declares a symbolic tree based on their connection tree, linking to declared components. Functions then act on that symbolic tree, arranging the connections and creating a single model. The result is a single state-update equation which describes the model. 

## Future Research

Current work focuses on translating the novel implementation in the library into a fully formed state-space model description. Currently, I am working to translate my method from Faust's block diagram algebra system into a linear algebra representation. I am currently working with Kurt Werner and Julius O. Smith III to refine and publish my preliminary results. We are hoping to create the first state-space description of the connection tree based implementation of wave digital models, an alternative to Sarti and De Sancits's state-space wave-digital description, the wave tableau method. (Sarti, De Sancits, "Systematic Methods for the Implementation of Nonlinear Wave-Digital Structures". We expect to have a publication prepared for submission by mid-winter. 

I am also working to create tools which make the creation of R-type adaptors much simpler, allowing for a symbolic description. 