### Connect_To_SQLite_Database                                                                                              
###                                                                         
###                                                                                             
### This code uses the ODBC and RSQLite packages to connect to a SQLite Database                                                                                             
###                                                                                            
###   - A connection is created with the RSQLite package
###   - That connection is used by the ODBC package to access and interact with the SQLite Database




library(RSQLite)      # Can used to create a connection to a SQLite3 Database
                      # Also downloads DBI, which is used to interact with the database
library(tidyverse)








######################
## DEFINE FUNCTIONS ##
######################

      






create_sqlite_connection <- function(db_location, db_name) {
  
  ### Returns a connection to a SQLite Database file on computer
  ###
  ### Found working solution here:
  ### https://stackoverflow.com/questions/32545777/r-connection-to-sqlite
  
  
  # Set the working directory to the folder containing the SQLIte file
  setwd(db_location)
  
  # Create the connection to the SQLite Database using RSQLite
  conn <- dbConnect(dbDriver("SQLite"), db_name)
  
  # Return the connection
  return(conn)
}








####################
## TEST FUNCTIONS ##
####################








## Test with the HoopStats SQLite Database


# Create a connection to HoopStats with RSQLite
conn <- create_sqlite_connection("C:\\Users\\mneff\\Desktop\\College Stuff\\Data Science Society\\HoopStats Project",
                                 "HoopStats.sqlite")

# To test the connection, list all tables in the database
DBI::dbListTables(conn)








