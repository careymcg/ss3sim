\name{change_agecomp}
\alias{change_agecomp}
\title{Change age comps}
\usage{
  change_agecomp(infile, outfile,
    distribution = "multinomial", Nsamp = NA, minyear = NA,
    maxyear = NA, years = NA, svyears = NA, N_agebins = NA,
    agebin_vector = NA, agecomp = NA)
}
\arguments{
  \item{infile}{SS data object from SS_readdat() in the
  r4ss package. Make sure you select option "section=2"}

  \item{outfile}{Name of the new file to be created. May be
  global or local. Make sure to give extension .dat to the
  file name.}

  \item{distribution}{Distribution to be used to sample the
  length compositions. Options are "multinomial" and
  "dirichlet"}

  \item{Nsamp}{Number of samples drawn from a multinomial
  distribution, or precision for the Dirichlet
  distribution}

  \item{minyear}{starting year for the fleet age comps.
  Overridden by specifying "years"}

  \item{maxyear}{ending year for the fleet age comps.
  Overridden by specifying "years"}

  \item{N_agebins}{Number of age bins}

  \item{agebin_vector}{A vector of age bins}

  \item{years}{Vector of years for the fleet age comps}

  \item{svyears}{Vector of years for the survey age comps}

  \item{agecomp}{Matrix of age comps}
}
\description{
  Take a data.SS_new file, resample the age compositions
  from the expected values, and return a new file with the
  new age comp samples. Samples can have dimensions, bins,
  sample sizes, and distributions which are different than
  those coming from SS.
}
\author{
  Roberto Licandeo, Felipe Hurtado-Ferro
}

