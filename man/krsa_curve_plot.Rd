% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/krsa_curve_plot.R
\name{krsa_curve_plot}
\alias{krsa_curve_plot}
\title{Generates curves plots per peptide using the last cycle data}
\usage{
krsa_curve_plot(data, peptides, samples = NULL, groups = NULL)
}
\arguments{
\item{data}{PW data (that includes all exposure times)}

\item{peptides}{a vector of peptides to plot}

\item{samples}{(optional) sample names}

\item{groups}{(optional) group names}
}
\value{
ggplot
}
\description{
This function takes in the PW data (that includes all exposure times), list of peptides, and optional arguments of samples or groups names vector
}
\examples{
TRUE
}
