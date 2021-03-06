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

\name{add.grid.table}
\alias{add.grid.table}
\alias{add.grid.text}

\title{Print tables or text in a grid object}
\description{
  These functions take an array of values and labels or an array of
  text and add it to one or many grid viewports in an orderly fashion.
}
\usage{
add.grid.table(txt,
               col.nams = NULL,
               ystart,
               xstart = unit(0, "npc"),
               start.pt = 1,
               vp,
               vp.num = 1,
               minrow = 5,
               cell.padding = 0.5,
               mult.col.padding = 1,
               col.optimize = TRUE,
               equal.widths = FALSE,
               space.before.table = 1,
               center.table = FALSE,
               use.rect=FALSE,
               fill.type=NULL, # all,top,side,both,NULL
               fill.col="grey",
               cell.lines.lty=0,
               ...)

add.grid.text(txt,
              ystart,
              xstart = unit(0, "npc"),
              start.pt = 1,
              vp,
              vp.num = 1,
              spaces.before = NULL,
              spaces.after = NULL,
              v.space.before=0,
              v.space.after=0,
              use.rect=FALSE,
              wdth=NULL,
              fill.type=NULL,
              fill.col="grey",
              cell.lines.lty=0,
              xpose.table=gTree(),
              ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{txt}{The text or table values to add to the grid object.}
  \item{col.nams}{the column names of the table values}
  \item{ystart}{The y location to start printing in the grid viewport}
  \item{xstart}{The x location to start printing in the grid viewport}
  \item{start.pt}{The start point (row) in the table array to start printing}
  \item{vp}{The viewport(s) to add the table or text to}
  \item{vp.num}{the viewport number in \code{vp} to start printing to}
  \item{minrow}{The minimum rows before printing more columns to use in the table}
  \item{cell.padding}{padding between cells in the table}
  \item{mult.col.padding}{padding between multiple columns in the table}
  \item{col.optimize}{should we column optimize (\code{TRUE}) or row
    optimize (\code{FALSE}) }
  \item{equal.widths}{Should all columns have equal widths}
  \item{space.before.table}{Should there be a space before the table}
  \item{center.table}{should we center the table in the viewport?}
  \item{use.rect}{Should we make rectangles with background color around
    the table entries \code{TRUE} or \code{FALSE}}
  \item{fill.type}{Which rectangles should be filled.  Allowed values
    are \code{"all"}, \code{"top"}, \code{"side"},
    \code{"both"} and \code{NULL}.}
  \item{fill.col}{The color of the filled rectangles}
  \item{cell.lines.lty}{The line-type for the lines between the cells,
              using the same values as lty.}
  \item{spaces.before}{Rows added before text is printed out}
  \item{spaces.after}{Rows added after text is printed out}
  \item{v.space.before}{Vertical space above text in a table in "lines"
              units.}
  \item{v.space.after}{Vertical space below text in a table in "lines"
    units.}
  \item{wdth}{The width of the column of data}
  \item{xpose.table}{A grob object.}
  \item{\dots}{Other arguments passed to the various functions.}
}
\value{
  A List is returned with the following components
  \item{ystart }{new starting point for new text}
  \item{stop.pt }{null if everything gets printed}
  \item{vp.num }{the viewport needed for next text printed}
  \item{xpose.table }{A grob object that can be plotted.}
}
\author{Andrew Hooker}

\seealso{
  \code{\link{runsum}},
  \code{\link[grid]{grid.text}}
}
\keyword{methods}

