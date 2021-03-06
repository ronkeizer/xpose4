% Xpose 4
% An R-based population pharmacokinetic/
% pharmacodynamic model building aid for NONMEM.
% Copyright (C) 1998-2004 E. Niclas Jonsson and Mats Karlsson.
% Copyright (C) 2005-2008 Andrew C. Hooker, Justin J. Wilkins, 
% Mats O. Karlsson and E. Niclas Jonsson.
% Copyright (C) 2009-2010 Andrew C. Hooker, Mats O. Karlsson and 
% E. Niclas Jonsson.

% This file is a part of Xpose 4.
% Xpose 4 is free software; you can redistribute it and/or
% modify it under the terms of the GNU Lesser General Public License
% as published by the Free Software Foundation, either version 3
% of the License, or (at your option) any later version.

% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU Lesser General Public License for more details.

% You should have received a copy of the GNU Lesser General Public License
% along with this program.  A copy can be cound in the R installation
% directory under \share\licenses. If not, see http://www.gnu.org/licenses/.

\name{absval.iwres.cwres.vs.ipred.pred}
\alias{absval.iwres.wres.vs.ipred.pred}
\alias{absval.iwres.cwres.vs.ipred.pred}
\title{Absolute population weighted residuals vs population predictions, 
  and absolute individual weighted residuals vs individual predictions, for Xpose 4}
\description{
  This is a matrix plot of absolute population weighted residuals (|CWRES|) vs
  population predictions (PRED) and absolute individual weighted residuals 
  (|IWRES|) vs individual predictions (IPRED), a specific 
  function in Xpose 4. It is a wrapper encapsulating arguments to the 
  \code{absval.cwres.vs.pred} and \code{absval.iwres.vs.ipred} functions. 
}
\usage{
absval.iwres.wres.vs.ipred.pred(object,
           main="Default",
           ...)
absval.iwres.cwres.vs.ipred.pred(object,
           main="Default",
           ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{object}{An xpose.data object. }
  \item{main}{The title of the plot.  If \code{"Default"} then a default
    title is plotted. Otherwise the value should be a string like
    \code{"my title"} or \code{NULL} for no plot title.  For
    \code{"Default"} the function
    \code{\link{xpose.multiple.plot.title}} is used.}
  \item{\dots}{Other arguments passed to \code{link{xpose.plot.default}}.}
}
\details{
  The plots created by the \code{absval.wres.vs.pred} and \code{absval.iwres.vs.ipred} 
  functions are presented side by side for comparison.
  
  A wide array of extra options controlling xyplots are 
  available. See \code{\link{xpose.plot.default}} for details.
}
\value{
  Returns a compound plot.
}
\author{E. Niclas Jonsson, Mats Karlsson, Andrew Hooker & Justin Wilkins}
\seealso{
  \code{\link{absval.wres.vs.pred}},
  \code{\link{absval.iwres.vs.ipred}},
  \code{\link{xpose.plot.default}},
  \code{\link{xpose.panel.default}},
  \code{\link[lattice]{xyplot}},
  \code{\link{xpose.prefs-class}},
  \code{\link{xpose.data-class}}
}
\examples{
\dontrun{
## We expect to find the required NONMEM run and table files for run
## 5 in the current working directory
xpdb5 <- xpose.data(5)
}

## Here we load the example xpose database 
data(simpraz.xpdb)
xpdb <- simpraz.xpdb

## A vanilla plot
absval.iwres.wres.vs.ipred.pred(xpdb)
absval.iwres.cwres.vs.ipred.pred(xpdb)

## Custom colours and symbols
absval.iwres.cwres.vs.ipred.pred(xpdb, cex=0.6, pch=8, col=1)
}
\keyword{methods}
