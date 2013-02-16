\name{lematiza}
\alias{lematiza}


\title{
Basic single term Spanish stemmer using apicultur API.
}
\description{
This function provides a basic single term stemmer for Spanish using apicultur's "LematizadorClasico" API (see references below). 
Given a term in Spanish, it returns a list of possible lemmas it may derive from.
}
\usage{
lematiza(conexion, termino)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{conexion}{apicultuR connexion string as created by the \code{\link{conexion.apicultur}} function }
  \item{termino}{a single term (character string) to be stemmed}
}
\value{
It returns a data frame with the following columns:
\item{lema}{lemma from which \code{termino} may derive}
\item{categoria}{coded POS (part of speech) corresponding to the lemma}
\item{categoriaSimple}{alternative coded categorization of POS}

The correspondence of POS codes and their descriptions can be found at \url{http://www.apicultur.com/codigos-de-categorias-gramaticales/}.

}
\references{
\url{http://www.apicultur.com/lematizadorclasico-documentacion/}
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
lematiza(apicultur, "casas")

  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ character }
\keyword{ nlp }
