\name{run_ss3sim}
\alias{run_ss3sim}
\title{Run both the operating model and assessment model}
\usage{
  run_ss3sim(iterations, scenarios, m_params, f_params,
    index_params, lcomp_params, agecomp_params,
    om_model_dir, em_model_dir, bias_correct = FALSE,
    bias_nsim = 5, bias_already_run = FALSE)
}
\arguments{
  \item{iterations}{Which iterations to run. A numeric
  vector.}

  \item{scenarios}{Which scenarios to run.}

  \item{m_params}{A named list containing all the
  \code{\link{change_m}} options.}

  \item{f_params}{A named list containing all the
  \code{\link{change_f}} options.}

  \item{index_params}{A named list containing all the
  \code{\link{change_index}} options.}

  \item{lcomp_params}{A named list containing all the
  \code{\link{change_lcomp}} options.}

  \item{agecomp_params}{A named list containing all the
  \code{\link{change_agecomp}} options.}

  \item{om_model_dir}{The directory with the operating
  model you want to copy and use for the specified
  simulations.}

  \item{em_model_dir}{The directory with the estimation
  model you want to copy and use for the specified
  simulations.}

  \item{bias_correct}{Run bias correction first? See
  \code{\link{run_bias_ss3}}.}

  \item{bias_nsim}{If bias correction is run, how many
  simulations should the bias be estimated from? It will
  take the mean of the correction factors across these
  runs.}
}
\description{
  This function is a wrapper function that can call
  \code{\link{run_ss3model}} for the operating model,
  manipulate the output (add recruitment deviations, survey
  the data, etc.), and run the estimation model.
}
\details{
  This function is written to be flexible. You can specify
  the index, lcomp, and agecomp parameters in the function
  call. Eventually the plan is to create a script which
  derives the parameters from the case identifiers and
  calls this function. That will be a FISH600 specific
  function.
}
\examples{
\dontrun{
# Pull in file paths from the package example data:
d <- system.file("extdata", package = "ss3sim")
f <- paste0(d, "/run_ss3sim_eg/")
om_model_dir <- paste0(f, "cod_om")
em_model_dir <- paste0(f, "cod_em")
a <- get_caseargs(folder = paste0(f, "case-arguments"), scenario =
"M1-F1-D1-R1-cod")

# With bias correction:
# (Note that bias_nsim should be bigger, say 5, but it is set to 1
here so the example runs faster.)

run_ss3sim(iterations = 1, scenarios = "M1-F1-D1-R1-cod", m_params
= a$M, f_params = a$F, index_params = a$index, lcomp_params =
a$lcomp, agecomp_params = a$agecomp, om_model_dir = om_model_dir,
em_model_dir = em_model_dir)
}
}
\author{
  Sean C. Anderson
}
\seealso{
  \code{\link{run_fish600}}
}

