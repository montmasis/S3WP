Interactive data visaulization via hierachical cluster analysis (HCA).
Original source code from: https://jokergoo.github.io/InteractiveComplexHeatmap/articles/share.html

There are tow versions of the HCA, one for average values (across 6 visits) and the other for values per each single visit.
In each folder:
htShiny.R containing R code that generates the interactive heatmap. 
htShiny.RData containing all R objects needed for heatmap (loaded in htShiny.R.) 
htShiny.sh and htShiny.bat that can be run in the terminal under Linux/MacOS or Windows. 

An easy way to access the interactive heatmaps is to open the htShiny.R file on R studio and run the script. 
You will not need to have installed the InteractiveComplexHeatmap package, since htShiny.R will install it automatically if not already installed.
