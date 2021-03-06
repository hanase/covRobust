\name{cov.nnve}
\alias{cov.nnve}

\title{Robust Covariance Estimation via Nearest Neighbor Cleaning}

\description{
  The \code{cov.nnve} function for robust covariance estimation
  by the nearest neighbor variance estimation (NNVE) method of
  Wang and Raftery (2002, \emph{JASA}).
}

\usage{
cov.nnve(datamat, k = 12, pnoise = 0.05, emconv = 0.001, bound = 1.5, 
         extension = TRUE, devsm = 0.01)
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{datamat}{matrix in which each row represents an observation or point
                 and each column represents a variable}
  \item{k}{desired number of nearest neighbors (default is 12)}
  \item{pnoise}{percent of added noise}
  \item{emconv}{convergence tolerance for EM}
  \item{bound}{value used to identify surges in variance caused by
               outliers wrongly included as signal points (\code{bound = 1.5}
               means a 50 percent increase)}
  \item{extension}{whether or not to continue after reaching the last
                   chi-square distance. The default is to continue,
                  which is indicated by setting \code{extension = TRUE}.}
  \item{devsm}{when \code{extension = TRUE}, the algorithm stops if the 
      relative difference in variance is less than \code{devsm}. 
      (default is 0.01)}
}

\value{
 A list with the following components:
 \item{cov}{covariance matrix}
 \item{mu}{mean vector}
 \item{postprob}{posterior probability}
 \item{classification}{classification (0=noise otherwise 1) obtained
                       by rounding \code{postprob}}
  \item{innc}{list of initial nearest neighbor cleaning results
   (components are the covariance, mean, posterior probability
              and classification)}
}

\references{
Wang and Raftery (2002),Nearest neighbor variance estimation (NNVE): 
Robust covariance estimation via nearest neighbor cleaning (with discussion), 
\emph{Journal of the American Statistical Association} 97:994-1019

see also University of Washington Statistics Technical Report 368 (2000) 
\url{http://www.stat.washington.edu/www/research/reports}
}

\note{terms of use: GPL version 2 or newer.}

\examples{
data(iris)
cov.nnve(iris[-5])
}

\keyword{multivariate}
\keyword{robust}
