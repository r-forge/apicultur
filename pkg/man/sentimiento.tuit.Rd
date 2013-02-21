\name{sentimiento.tuit}
\alias{sentimiento.tuit}


\title{
Sentiment analysis for tweets in Spanish using apicultur API.
}
\description{
This function provides "sentiment" for tweets in Spanish using apicultur's stmtlk API (see references below). 
It tries to guess the sentiment in a given tweet in Spanish. 
}
\usage{
sentimiento.tuit(conexion, tuit)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{conexion}{apicultuR connexion string as created by the \code{\link{conexion.apicultur}} function }
  \item{tuit}{a tweet in spanish; only the first 140 characters of it will be used}
}
\value{
It returns a list with the following entries:
\item{intensidad}{the intensity of the sentiment}
\item{certidumbre}{the certainty in the sentiment estimation}
\item{ponderacion}{the sentiment: POSITIVA/NEGATIVA for positive/negative}
\item{texto}{the tweet}


}
\references{
\url{https://store.apicultur.com/apis/info?name=stmtlk&version=1.0.0&provider=stmtlk}
}
\author{
Carlos J. Gil Bellosta
}

\seealso{
\code{\link{conexion.apicultur}}
}
\examples{
  \dontrun{

apicultur <- conexion.apicultur("8FRk...oa")
sentimiento.tuit(apicultur, "alfredo es un cocinero estupendo")
sentimiento.tuit(apicultur, "es la peor novela que existe")

  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ character }
\keyword{ nlp }
