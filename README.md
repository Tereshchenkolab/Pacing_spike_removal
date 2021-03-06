# Pacing_spike_removal
Semi-automated algorithm for Pacing artifacts detection and removal on ECG
## Table of Content
  - MATLAB Code
  - STATA Code 
  - Test file 
  
### Authors
- Kazi Haq, PhD <haqk@ohsu.edu> 
- Neeraj Javadekar
- Larisa Tereshchenko, MD, PhD, <tereshch@ohsu.edu>
- Last update: January 20, 2021
  
### MATLAB Code
See removespikegui.m and removespikegui.fig file in the repository to run the GUI to detect and remove pacing spike artifact. Please read the "Manual for pacing spike removal GUI.pdf" for the details on how to use this interface. Test file (10000301.mat) is provided (.mat) for algorithm testing.

### Manual for Pacing Spike Removal GUI.pdf
Use this guide to know how to use this interface. The guide also provides details of the threshold values to be used with an example. 

### Test files
One test file (10000301.mat) is provided for testing. Sampling rate 500 Hz. Amplitude resolution 1 µV.

### STATA code for statistical analysis
See STATA .do file. We used the kappa-statistic measure of interrater agreement for two independent raters. Nonparametric receiver operating characteristic (ROC) analysis with a rating and discrete classification data was performed to calculate the area under the ROC curve (ROC AUC) and measure the automated pacing artifact detection's sensitivity and specificity.

### Manuscripts to reference:
Haq KT, Javadekar N, Tereshchenko LG. Detection and removal of pacing artifacts prior to automated analysis of 12-lead ECG. Comput Biol Med. 2021 Jun;133:104396. doi: 10.1016/j.compbiomed.2021.104396. Epub 2021 Apr 19. PubMed PMID: 33872969; PubMed Central PMCID: PMC8169623
