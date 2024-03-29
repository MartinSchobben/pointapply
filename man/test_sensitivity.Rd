% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/test_sensitivity.R
\name{test_sensitivity}
\alias{test_sensitivity}
\title{Sensitivity test of diagnostics}
\usage{
test_sensitivity(
  yield,
  R,
  reps,
  ion1 = "13C",
  ion2 = "12C",
  reference = "VPDB",
  diag = "sens",
  type = "intra",
  save = FALSE,
  mc_cores = 1
)
}
\arguments{
\item{yield}{Ionization yield.}

\item{R}{Isotope ratio.}

\item{reps}{Repetitions.}

\item{ion1}{Rare ion.}

\item{ion2}{Common ion.}

\item{reference}{Reference standard.}

\item{diag}{Name of the diagnostics test (either CooksD or Cameca).}

\item{type}{Type of diagnostics (either "intra"- or "inter"-analysis).}

\item{save}{Boolean whether to save the data.}

\item{mc_cores}{Number of cores to use for parallel execution.}
}
\value{
A tibble with synthetic data or diagnostic results.
}
\description{
Sensitivity test of diagnostics
}
