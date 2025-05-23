% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geodetector.R
\name{geodetector}
\alias{geodetector}
\title{geographical detector}
\usage{
geodetector(formula, data, type = "factor", alpha = 0.95)
}
\arguments{
\item{formula}{A formula of geographical detector model.}

\item{data}{A data.frame or tibble of observation data.}

\item{type}{(optional) The type of geographical detector, which must be one of \code{factor}(default),
\code{interaction}, \code{risk}, \code{ecological}.}

\item{alpha}{(optional) Specifies the size of the alpha (confidence level). Default is \code{0.95}.}
}
\value{
A list.
\describe{
\item{\code{factor}}{the result of factor detector}
\item{\code{interaction}}{the result of interaction detector}
\item{\code{risk}}{the result of risk detector}
\item{\code{ecological}}{the result of ecological detector}
}
}
\description{
geographical detector
}
\note{
Note that only one type of geodetector is supported at a time in \code{geodetector()}.
}
\examples{
geodetector(y ~ x1 + x2,
   tibble::tibble(y = 1:7,
                  x1 = c('x',rep('y',3),rep('z',3)),
                  x2 = c(rep('a',2),rep('b',2),rep('c',3))))

geodetector(y ~ x1 + x2,
   tibble::tibble(y = 1:7,
                  x1 = c('x',rep('y',3),rep('z',3)),
                  x2 = c(rep('a',2),rep('b',2),rep('c',3))),
   type = 'interaction')

geodetector(y ~ x1 + x2,
   tibble::tibble(y = 1:7,
                  x1 = c('x',rep('y',3),rep('z',3)),
                  x2 = c(rep('a',2),rep('b',2),rep('c',3))),
   type = 'risk',alpha = 0.95)

geodetector(y ~ x1 + x2,
   tibble::tibble(y = 1:7,
                  x1 = c('x',rep('y',3),rep('z',3)),
                  x2 = c(rep('a',2),rep('b',2),rep('c',3))),
   type = 'ecological',alpha = 0.95)

}
\author{
Wenbo Lv \email{lyu.geosocial@gmail.com}
}
