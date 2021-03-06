% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/krsa_read.R
\name{krsa_read}
\alias{krsa_read}
\title{Read crosstab format files exported from bioNavigator and tidy them}
\usage{
krsa_read(signal_file, signal_saturation)
}
\arguments{
\item{signal_file}{path to median signal minus background file (Median_SigmBg)}

\item{signal_saturation}{path to signal saturation file (Signal_Saturation)}
}
\value{
tbl_df
}
\description{
This function takes in paths to the median signal minus background (Median_SigmBg) and signal saturation (Signal_Saturation) files and parse and tidy them
}
\examples{
TRUE
}
