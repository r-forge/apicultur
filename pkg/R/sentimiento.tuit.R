#################################################################
# 
# File:         sentimiento.tuit.R
# Purpose:      Finds sentiment using the "stmtlk - 1.0.0" API from apicultur
#
# Created:      20130216
# Authors:      cjgb
#
# Modifications: 
#
#################################################################


sentimiento.tuit <- function(conexion, tuit){
  mdi.url <- paste(
                "https://store.apicultur.com/api/stmtlk/1.0.0/valoracion/tweet/10/", 
                URLencode(tuit), sep = "" )
  
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
  
  tmp <- fromJSON(iconv(tmp, to = "LATIN1"))
}
