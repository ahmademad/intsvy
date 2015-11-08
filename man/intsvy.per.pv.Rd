\name{intsvy.per.pv}
\alias{intsvy.per.pv}
\title{INTSVY percentiles}
\description{Calculates percentiles for plausible values.
   User-defined percentiles (e.g., c(5, 10, 25, 75, 90, 95)) and with selected weights (e.g. "TOTWGT" in TIMSS) are specified in the config parameter.   
}
\usage{
  intsvy.per.pv(pvlabel="BSMMAT", by, 
           data, export=FALSE, name= "output", folder=getwd())
}
\arguments{
  \item{pvlabel}{
    The label corresponding to the achievement variable, for example, "BSMMAT", for overall mathematics performance.
  }
  \item{by}{
    The label of the categorical grouping variable (e.g., by="IDCNTRYL") or variables (e.g., by=c("IDCNTRYL", "ITSEX")).   
  }
   \item{data}{
    An R object, normally a data frame, containing the data from intsvy studies.
  }
  \item{export}{
    A logical value. If TRUE, the output is exported to a file in comma-separated value format (.csv) that can be opened from LibreOffice or Excel. 
  }
  \item{name}{
    The name of the exported file.
  }
  \item{folder}{
    The folder where the exported file is located.
  }
  \item{config}{
Object with configuration of a given study. Should contain the slot `prefixes` with prefixes of filenames with the student, home, school, and teacher data.
}
}

\value{
  intsvy.per.pv returns a data frame with percentiles and associated standard errors.
}

\seealso{
  pisa.per.pv, pirls.per.pv, timss.per.pv
}
\examples{
  \dontrun{
    # Appendix G.2, p. 484, TIMSS 2011 International Results in Mathematics
    timss.per.pv(pvlabel="BSMMAT", per = c(5, 10, 25, 50, 75, 90, 95), by="IDCNTRYL", data=timssg8)
  }
}