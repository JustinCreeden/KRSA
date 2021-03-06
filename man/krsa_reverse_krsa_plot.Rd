% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/krsa_reverse_krsa_plot.R
\name{krsa_reverse_krsa_plot}
\alias{krsa_reverse_krsa_plot}
\title{Generates the reverse krsa plot (to examine kinase activity)}
\usage{
krsa_reverse_krsa_plot(chipCov, lfc_table, kinases, lfc_thr, byChip = T)
}
\arguments{
\item{chipCov}{chipCov df for eaither STK or PTK}

\item{lfc_table}{the LFC table}

\item{kinases}{vector of kinases}

\item{lfc_thr}{LFC threshold}
}
\value{
vector
}
\description{
This function takes in chipCov df, the LFC table, kinases, LFC threshold, and generates the reverse krsa plot (to examine kinase activity)
}
\examples{
TRUE
}
