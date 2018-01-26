* Example Stata do-file 

* Create a text log file that stores the results
log using example.txt, text replace

* Read in the Stata data set carsdata.dta
use example.dta

* Describe the variables in the data set
describe

* List the dataset 
list 

* Provide summary statistics of the variables in the data set
summarize

* Provide an X,Y scatterplot with a regression line
twoway (scatter cars hhsize) (lfit cars hhsize)

* Save the preceding graph in a file in PNG (portable networks graphic) format
graph export carsdata.png, replace

* Regress cars on hhsize
regress cars hhsize

