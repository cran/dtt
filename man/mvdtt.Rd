\name{mvdtt}
\alias{mvdtt}
\alias{mvdct}
\alias{mvdst}
\alias{mvdht}
\title{ 2D Discrete Trigonometric Transforms }
\description{
  Performs multivariate (2D) discrete sine, cosine or Hartley transform.
}
\usage{
mvdtt(x, type = c("dct", "dst", "dht"), variant = 2, inverted = FALSE)
mvdct(x, variant = 2, inverted = FALSE)
mvdst(x, variant = 2, inverted = FALSE)
mvdht(x, inverted = FALSE)
}
\arguments{
  \item{x}{ a matrix to be transformed }
  \item{type}{ type of transform. Default "dct" is discrete cosine, "dst" is discrete sine and "dht" is discrete Hartley }
  \item{variant}{ a transformation variant - 1...4 for DCT-I...DCT-IV or DST-I...DST-IV. 
Default is DCT-II or DST-II. Ignored when type = "dht" }
  \item{inverted}{ if the inverted transform should be performed? }
}
\details{

This function transforms a matrix of real numbers into a matrix of its DCT, DST or DHT components, of the same dimensions.
It is done by so-called row-matrix algorithm.

The mvdct, mvdst and mvdht functions are simple wrappers for choosing the type by function name.

}
\value{

A transformed matrix.

}
\references{
1. N. Ahmed, T. Natarajan, and K. R. Rao, "Discrete Cosine Transform", IEEE Trans. Computers, 90-93, Jan 1974.
2. S. A. Martucci, "Symmetric convolution and the discrete sine and cosine transforms", IEEE Trans. Sig. Processing SP-42, 1038-1051 (1994).
3. R. V. L. Hartley, "A more symmetrical Fourier analysis applied to transmission problems," Proc. IRE 30, 144-150 (1942).
}
\author{ Lukasz Komsta }
\seealso{ \code{\link{dtt}}, \code{\link{fft}}, \code{\link{mvfft}}}
\examples{
x = rnorm(100);
dim(x) = c(10,10);
x
mvdct(x)
mvdct(mvdct(x),inverted=TRUE)
}
\keyword{models}
