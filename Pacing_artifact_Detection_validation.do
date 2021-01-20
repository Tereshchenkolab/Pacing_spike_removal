***STATA code for validation of pacing artifact detection algorihm
***written by Larisa Tereshchenko MD, PhD <tereshch@ohsu.edu>
***use Stata 16.1
***January 2021


*** kappa statistic for two unique raters
kap ground_truth auto, tab

***ROC AUC statistic
roctab ground_truth auto, detail table graph summary

***descriptive statistic (dataset setup as panel/longitudinal data)
xtset ptID samples
xtdescribe


