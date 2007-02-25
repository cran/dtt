\name{dtt}
\alias{dtt}
\alias{dct}
\alias{dst}
\alias{dht}
\title{ Discrete Trigonometric Transforms }
\description{
  Performs univariate discrete sine, cosine or Hartley transform.
}
\usage{
dtt(x, type = c("dct", "dst", "dht"), variant = 2, inverted = FALSE)
dct(x, variant = 2, inverted = FALSE)
dst(x, variant = 2, inverted = FALSE)
dht(x, inverted = FALSE)
}
\arguments{
  \item{x}{ a vector or matrix to be transformed }
  \item{type}{ type of transform. Default "dct" is discrete cosine, "dst" is discrete sine and "dht" is discrete Hartley }
  \item{variant}{ a transformation variant - 1...4 for DCT-I...DCT-IV or DST-I...DST-IV. 
Default is DCT-II or DST-II. Ignored when type = "dht" }
  \item{inverted}{ if the inverted transform should be performed? }
}
\details{

This function transforms a vector of real numbers into a vector of its DCT, DST or DHT components, of the same length.

If the x is a matrix, the transform goes by rows (each row of a result is a transform of corresponding row in x).

The dct, dst and dht functions are simple wrappers for choosing the type by function name.

}
\value{

A transformed vector.

}
\references{
1. N. Ahmed, T. Natarajan, and K. R. Rao, "Discrete Cosine Transform", IEEE Trans. Computers, 90-93, Jan 1974.
2. S. A. Martucci, "Symmetric convolution and the discrete sine and cosine transforms", IEEE Trans. Sig. Processing SP-42, 1038-1051 (1994).
3. R. V. L. Hartley, "A more symmetrical Fourier analysis applied to transmission problems," Proc. IRE 30, 144-150 (1942).
}
\author{ Lukasz Komsta }
\seealso{ \code{\link{mvdtt}}, \code{\link{fft}}, \code{\link{mvfft}}}
\examples{
x=seq(0,20,length=200)
y=x*sin(x)+cos(x)+5*cos(10*x)+rnorm(200,sd=0.1)
plot(y)
z=dct(y); z[151:200]=0; lines(dct(z,inverted=TRUE),col=2);
z=dct(y); z[21:200]=0; lines(dct(z,inverted=TRUE),col=4);
}
\keyword{models}
