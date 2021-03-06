# Xpose 4
# An R-based population pharmacokinetic/
# pharmacodynamic model building aid for NONMEM.
# Copyright (C) 1998-2004 E. Niclas Jonsson and Mats Karlsson.
# Copyright (C) 2005-2008 Andrew C. Hooker, Justin J. Wilkins, 
# Mats O. Karlsson and E. Niclas Jonsson.
# Copyright (C) 2009-2010 Andrew C. Hooker, Mats O. Karlsson and 
# E. Niclas Jonsson.

# This file is a part of Xpose 4.
# Xpose 4 is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public License
# as published by the Free Software Foundation, either version 3
# of the License, or (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.

# You should have received a copy of the GNU Lesser General Public License
# along with this program.  A copy can be cound in the R installation
# directory under \share\licenses. If not, see http://www.gnu.org/licenses/.

"absval.iwres.vs.ipred.by.cov" <-
  function(object,
           
           #xlb  = NULL,
           ylb  = "|IWRES|",
           #onlyfirst=FALSE,
           #inclZeroWRES=FALSE,
           #subset=xsubset(object),
           #mirror=FALSE,
           #seed  = NULL,
           idsdir="up",
           type="p",
           smooth=TRUE,
           #prompt = TRUE,
           main="Default",
           ...) {

    if(is.null(xvardef("iwres",object)) ||
       is.null(xvardef("ipred",object))) {
      
      return(cat("The required (IWRES and IPRED) variables are not set in the database!\n"))
    }
    
    if(any(is.null(xvardef("covariates",object)))) {
      
      return(cat("There are no covariates defined in the database!\n"))
    }

    
    ## create list for plots
    number.of.plots <- 0
    for (i in xvardef("covariates", object)) {
      number.of.plots <- number.of.plots + 1
    }
    plotList <- vector("list",number.of.plots)
    plot.num <- 0 # initialize plot number

    
    for (i in xvardef("covariates", object)) {

      xplot <- xpose.plot.default(xvardef("ipred",object),
                                  xvardef("iwres",object),
                                  object,
                                  main=NULL,
                                  funy="abs",
                                  #xlb = xlb,
                                  ylb=ylb,
                                  idsdir=idsdir,
                                  type=type,
                                  smooth=smooth,
                                  by=i,
                                  pass.plot.list=TRUE,
                                  #subset=subset,
                                  ...)
      plot.num <- plot.num+1
      plotList[[plot.num]] <- xplot
    }
    

    default.plot.title <- paste("|",xlabel(xvardef("iwres",object),object),"| vs ",
                    xlabel(xvardef("ipred",object),object), sep="")

    plotTitle <- xpose.multiple.plot.title(object=object,
                                           plot.text = default.plot.title,
                                           main=main,
                                           ...)
    obj <- xpose.multiple.plot(plotList,plotTitle,...)
    return(obj)
  
  }
