% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/download.R
\name{germaparl_download_corpus}
\alias{germaparl_download_corpus}
\title{Download full GermaParl corpus.}
\usage{
germaparl_download_corpus(
  doi = "https://doi.org/10.5281/zenodo.3742113",
  quiet = FALSE
)
}
\arguments{
\item{doi}{The DOI (Digital Object Identifier) of the GermaParl tarball at
zenodo, presented as a hyperlink. Defaults to the latest version of 
GermaParl.}

\item{quiet}{Whether to suppress progress messages, defaults to \code{FALSE}.}
}
\value{
A logical value, \code{TRUE} if the corpus has been installed
  successfully.
}
\description{
The GermaParl R package includes only a small subset of the GermaParl corpus
(GERMAPARLMINI). The full corpus is deposited with
\href{https://zenodo.org/}{zenodo}, a repository for research data. The
\code{germaparl_download_corpus} function downloads a tarball with the
indexed corpus from the zenodo repository and installs the corpus within the
GermaParl package. When calling the function, a stable and fast internet
connection will be useful as the size of the data amounts to ~1 GB which
needs to be downloaded.
}
\details{
After downloading and installing the tarball with the CWB indexed
  corpus, the registry file for the GERMAPARL corpus will be amended by
  the DOI and the corpus version, to make this information for the citation
  information that is provided when calling the function \code{citation}.
}
\examples{
\dontrun{
if (!germaparl_is_installed()) germaparl_download_corpus()
use("GermaParl")
corpus() # should include GERMAPARLMINI and GERMAPARL
count("GERMAPARL", "Daten") # an arbitrary test
}
}
