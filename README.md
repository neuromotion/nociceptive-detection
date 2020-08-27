# nociceptive-detection
This repository contains associated data used and acquired during the development of the nociceptive detection assay.   
For assembly and use, please see the materials and methods section in the [Scientific Reports](https://www.nature.com/articles/s41598-020-70028-8) paper.

## [behavioral-platform](/behavioral-platform)
This directory contains the files for custom components used in building the nociceptive detection behavioral rig.  
### grated floor
The grated floor has a 5x5 grid of 4mm holes, with 1mm spacing for delivery of sensory stimuli to the hindpaw.

### behavioral base
The behavioral base is designed to be secured via M6 screws to a M6 compatible breadboard (ex. from Thorlabs). The base also has an opening to accomodate custom grated floors.

## [raw-data](/raw-data)
This directory contains raw data associated with figures from the nociceptive detection assay manuscript.
### [spinal-ephys](/raw-data/spinal-ephys)
Data is saved as a struct in a .mat file, and contains the following fields:  
 - times: timestamps for continuous data (ms)
 - data: continuous (mV)
 - fs: sampling rate (S/s)
 - events: timestamps for events (ms)
