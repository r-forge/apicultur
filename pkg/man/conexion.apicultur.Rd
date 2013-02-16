\name{conexion.apicultur}
\alias{conexion.apicultur}
\title{
Creates a connexion to the apicultur API
}
\description{
This function creates a connexion to the apicultur API hiding the authorization code required to use it.
}
\usage{
conexion.apicultur(auth.code = NA, file = NA)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{auth.code}{character string providing the authorization code for using the API (see the details section below)}
  \item{file}{path to a file containing the authorization code}
}
\details{The apicultur set of APIs provided by Molino de Ideas require registration for access. 
Free and non-free accounts are available (see \url{http://www.apicultur.com/}).
Upon registration, an authorization code will be provided by Molino de Ideas. 
This code can be passed to this function prior to making calls to the APIs using other functions in the package by either passing it as a character string or storing it in a file and providing its path.}
\value{
A connection string required by other functions for accessing the apicultur APIs.
}
\author{
Carlos J. Gil Bellosta
}

\examples{
  \dontrun{

apicultur <- conexion.apicultur("8FRk...oa")
lematiza(apicultur, "casas")

  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ misc }

