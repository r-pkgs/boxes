% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/debug.R
\name{cli_debug_doc}
\alias{cli_debug_doc}
\title{Debug cli internals}
\usage{
cli_debug_doc(app = default_app() \%||\% start_app())
}
\arguments{
\item{app}{The cli app to debug. Defaults to the current app.
if there is no app, then it creates one by calling \code{\link[=start_app]{start_app()}}.}
}
\value{
Data frame with columns: \code{tag}, \code{id}, \code{class} (space separated),
theme (id of the theme the element added), \code{styles} (computed styles
for the element).
}
\description{
Return the current state of a cli app. It includes the currently
open tags, their ids, classes and their computed styles.
}
\details{
The returned data frame has a print method, and if you want to create
a plain data frame from it, index it with an empty bracket:
\code{cli_debug_doc()[]}.

To see all currently active themes, use \code{app$themes}, e.g. for the
default app: \code{default_app()$themes}.
}
\examples{
\dontrun{
cli_debug_doc()

olid <- cli_ol()
cli_li()
cli_debug_doc()
cli_debug_doc()[]

cli_end(olid)
cli_debug_doc()
}
}
\seealso{
\code{\link[=cli_sitrep]{cli_sitrep()}}. To debug containers, you can set the
\code{CLI-DEBUG_BAD_END} environment variable to \code{true}, and then cli will
warn when it cannot find the specified container to close (or any
contained at all).
}
