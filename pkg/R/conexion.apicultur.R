#################################################################
# 
# File:         conexion.apicultur.R
# Purpose:      Create a connexion to apicultur caching the auth.code string
#
# Created:      20130216
# Authors:      cjgb
#
# Modifications: 
#
#################################################################


conexion.apicultur <- function(auth.code = NA, file = NA){
  if( !is.na(auth.code) )
    return(auth.code)
  if( !is.na(file) )
    stop("Not implemented")
  
  stop("You need to provide either an auth.code or a file containing it.")
}