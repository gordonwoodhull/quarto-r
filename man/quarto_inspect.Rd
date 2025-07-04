% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/inspect.R
\name{quarto_inspect}
\alias{quarto_inspect}
\title{Inspect Quarto Input File or Project}
\usage{
quarto_inspect(input = ".", profile = NULL, quiet = FALSE, quarto_args = NULL)
}
\arguments{
\item{input}{The input file or project directory to inspect.}

\item{profile}{\href{https://quarto.org/docs/projects/profiles.html}{Quarto project profile(s)} to use. Either
a character vector of profile names or \code{NULL} to use the default profile.}

\item{quiet}{Suppress warning and other messages, from R and also Quarto CLI
(i.e \code{--quiet} is passed as command line).

\code{quarto.quiet} \R option or \code{R_QUARTO_QUIET} environment variable can be used to globally override a function call
(This can be useful to debug tool that calls \verb{quarto_*} functions directly).

On Github Actions, it will always be \code{quiet = FALSE}.}

\item{quarto_args}{Character vector of other \code{quarto} CLI arguments to append
to the Quarto command executed by this function. This is mainly intended for
advanced usage and useful for CLI arguments which are not yet mirrored in a
dedicated parameter of this \R function. See \verb{quarto render --help} for options.}
}
\value{
Named list. For input files, the list contains the elements
\code{quarto}, \code{engines}, \code{formats}, \code{resources}, \code{fileInformation} plus \code{project} if the file is
part of a Quarto project. For projects, the list contains the elements
\code{quarto}, \code{dir}, \code{engines}, \code{config} and \code{files}.
}
\description{
Inspect a Quarto project or input path. Inspecting a project returns its
config and engines. Inspecting an input path return its formats, engine,
and dependent resources.
}
\examples{
\dontrun{
# Inspect input file file
quarto_inspect("notebook.Rmd")

# Inspect project
quarto_inspect("myproject")

# Inspect project's advanced profile
quarto_inspect(
  input = "myproject",
  profile = "advanced"
)
}
}
