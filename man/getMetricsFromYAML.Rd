% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getMetricsFromYAML.R
\name{getMetricsFromYAML}
\alias{getMetricsFromYAML}
\title{Get quality control metrics from YAML}
\usage{
getMetricsFromYAML(yaml)
}
\arguments{
\item{yaml}{\code{list}.
YAML metadata.}
}
\value{
\code{DataFrame}.
}
\description{
Parse the summary YAML and return quality control metrics.
}
\note{
Metrics are only generated for a standard RNA-seq run with aligned
counts. Fast RNA-seq mode with lightweight counts (pseudocounts) doesn't
output the same metrics into the YAML.

Updated 2021-02-26.
}
\examples{
file <- file.path(bcbioBaseTestsURL, "summary.yaml")
yaml <- basejump::import(file)
x <- getMetricsFromYAML(yaml)
summary(x)
colnames(x)
}
\author{
Michael Steinbaugh
}
