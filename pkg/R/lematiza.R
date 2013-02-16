#################################################################
# 
# File:         lematiza.R
# Purpose:      Lemmatizes a term using the "lematizador clásico" API from apicultur
#
# Created:      20130216
# Authors:      cjgb
#
# Modifications: 
#
#################################################################

lematiza <- function( conexion, termino){
  mdi.url <- paste("http://store.apicultur.com/api/lematiza-clasico/1.0.0/", termino, sep = "" )
  OAuthString <- paste("Bearer", conexion)
  httpHeader <- c("Authorization" = OAuthString, "Accept" = "application/json", "Content-Type" = "application/json")
  tg <- basicTextGatherer()
  
  try( httpResponse <- curlPerform(url = mdi.url, httpheader = httpHeader, writefunction = tg$update),
       silent = T )
  
  if( httpResponse != 0)
    stop("Error connecting to the requested API")
  
  tmp <- tg$value()
  
  if( grepl("You have exceeded your quota", tmp))
    stop("Too many API calls")
  
  tmp <- fromJSON(iconv(tmp, to = "LATIN1"))$lemas
  tmp <- as.data.frame(do.call(rbind, tmp), stringsAsFactors = FALSE)
}
