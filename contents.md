# contents

This document explains the contents of the git repository and is subject to change including simplification of contents as the more detailed documentation is created.

Documentation directory
=======================
    The documentation directory is intended to store the documents I write pertaining to the creation of the verilog implementations (such as the process from source doc to final product, and minor details such as control signal timings). This directory also contains the Synertek 65c02 documentation obtained at https://www.princeton.edu/~mae412/HANDOUTS/Datasheets/6502.pdf, I am not a student at princeton, I simply found the document and believed it to contain adequate explainations to connect my previous knowledge of basic processor design to this project.

Sources Directory
=================
    The sources directory contains all verilog files for the verilog65c02 implementation, including the top module and any lower modules. As the project is intended to implement the 65c02 on an FPGA board, the project will be primarily behavioral code and avoid using inout ports for internal connection.
