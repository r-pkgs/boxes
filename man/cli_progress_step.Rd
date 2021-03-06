% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/progress-client.R
\name{cli_progress_step}
\alias{cli_progress_step}
\title{Simplified cli progress messages, with styling}
\usage{
cli_progress_step(
  msg,
  msg_done = msg,
  msg_failed = msg,
  spinner = FALSE,
  class = if (!spinner) ".alert-info",
  current = TRUE,
  .auto_close = TRUE,
  .envir = parent.frame(),
  ...
)
}
\arguments{
\item{msg}{Message to show. It may contain glue substitution and cli
styling. It can be updated via \code{\link[=cli_progress_update]{cli_progress_update()}}, as usual.
It is style as a cli info alert (see \code{\link[=cli_alert_info]{cli_alert_info()}}).}

\item{msg_done}{Message to show on successful termination. By default
this it is the same as \code{msg} and it is styled as a cli success alert
(see \code{\link[=cli_alert_success]{cli_alert_success()}}).}

\item{msg_failed}{Message to show on unsuccessful termination. By
default it is the same as \code{msg} and it is styled as a cli danger alert
(see \code{\link[=cli_alert_danger]{cli_alert_danger()}}).}

\item{spinner}{Whether to show a spinner at the beginning of the line.
To make the spinner spin, you'll need to call \code{cli_progress_update()}
regularly.}

\item{class}{cli class to add to the message. By default there is no
class for steps with a spinner.}

\item{current}{Passed to \code{\link[=cli_progress_bar]{cli_progress_bar()}}.}

\item{.auto_close}{Passed to \code{\link[=cli_progress_bar]{cli_progress_bar()}}.}

\item{.envir}{Passed to \code{\link[=cli_progress_bar]{cli_progress_bar()}}.}

\item{...}{Passed to \code{\link[=cli_progress_bar]{cli_progress_bar()}}.}
}
\description{
This is a simplified progress bar, a single (dynamic)
message, without progress units.
}
\details{
\code{cli_progress_step()} always shows the progress message,
even if no update is due.
}
