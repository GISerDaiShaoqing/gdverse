% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gd.R
\name{gd}
\alias{gd}
\title{native geographical detector(GD) model}
\usage{
gd(formula, data, type = "factor", alpha = 0.95)
}
\arguments{
\item{formula}{A formula of geographical detector model.}

\item{data}{A \code{data.frame}, \code{tibble} or \code{sf} object of observation data.}

\item{type}{(optional) The type of geographical detector, which must be one of \code{factor}(default),
\code{interaction}, \code{risk}, \code{ecological}. You can run one or more types at one time.}

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
native geographical detector(GD) model
}
\examples{
data("NTDs")
g = gd(incidence ~ watershed + elevation + soiltype,
       data = NTDs,type = c('factor','interaction'))
g

}
\references{
Jin‐Feng Wang, Xin‐Hu Li, George Christakos, Yi‐Lan Liao, Tin Zhang, XueGu & Xiao‐Ying Zheng (2010)
Geographical Detectors‐Based Health Risk Assessment and its Application in the Neural Tube Defects Study
of the Heshun Region, China, International Journal of Geographical Information Science, 24:1, 107-127,
DOI: 10.1080/13658810802443457
}
\author{
Wenbo Lv \email{lyu.geosocial@gmail.com}
}
