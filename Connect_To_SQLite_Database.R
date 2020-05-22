###  Connect_To_SQLite_Database                                                                                              
###  (By Michael Neff)                                                                                              
###                                                                         
###                                                                                             
###     This code uses the ODBC and RSQLite packages to connect to a SQLite Database                                                                                             
###                                                                                                
###     - A connection is created with the RSQLite package
###     - That connection is used by the ODBC package to access and interact with the SQLite Database


library(dplyr)

library(RSQLite)  # Creates a connection ("conn") to the SQLite Database 
                  #   (https://db.rstudio.com/databases/sqlite/)

library(odbc)     # Implements the RSQLite "conn" to access the SQL Database and interact with it 
                  #   (https://db.rstudio.com/odbc/)
                


## Test with the HoopStats SQLite Database


# Create a connection with HoopStats












