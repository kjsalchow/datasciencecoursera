## Week 2 Programming Assignment for R Programming Course
pollutantmean <- function(directory, pollutant, id = 1:332){
    ## 'directory' is a character vector of lenght 1 indicating the location fo 
    ## the CSV files.
    
    ## 'pollutant' is a character vector of lenght 1 indicating the name of the 
    ## pollutant for which we will calculate the mean; either 'sulfate' or
    ## 'nitrate'.
    
    ## 'id' is an integer vector indicating th emonitor ID numbers to be used.
    
    ## Return the mean of the pllutant across all moitors listed in the 'id'
    ## vector (ignoring NA values).
    ## NOTE: Do not round the result!!
    
    
}

complete <- function(directory, id = 1:332){
    ## 'directory' is a character vector of lenght 1 indicating the location fo 
    ## the CSV files.
    
    ## 'id' is an integer vector indicating th emonitor ID numbers to be used.
    
    ## Return a data frame of the form:
    ## id nobs
    ## 1 117
    ## 2 1041
    ## ...
    ## where 'id' is the monitor ID number and 'nobs' is the number of complete
    ## cases.
    
    
}

corr <- function(directory, threshold = 0){
    ## 'directory' is a character vector of lenght 1 indicating the location fo 
    ## the CSV files.
    
    ## 'threshold' is a numeric vector of length 1 indicating the number of
    ## completely observed observations (on all variables) required to compute
    ## the correlation between nitrate and sulfate; the default is 0
    
    ## Retrun a numeric vector of corrrelations.
    ## NOTE: Do not round the result!!
    
    
    
}