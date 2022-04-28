#' Send query, retrieve results and then clear result set
#'
#' Returns the result of a query as a data frame.
#' `dbGetQuery()` comes with a default implementation
#' (which should work with most backends) that calls
#' [dbSendQuery()], then [dbFetch()], ensuring that
#' the result is always free-d by [dbClearResult()].
#'
#' This method is for `SELECT` queries only
#' (incl. other SQL statements that return a `SELECT`-alike result,
#'  e. g. execution of a stored procedure).
#'
#' To execute a stored procedure that does not return a result set,
#' use [dbExecute()].
#'
#' Some backends may
#' support data manipulation statements through this method for compatibility
#' reasons.  However, callers are strongly advised to use
#' [dbExecute()] for data manipulation statements.
#'
#'
#'
#'
#' #' @section Implementation notes:
#' Subclasses should override this method only if they provide some sort of
#' performance optimization.
#'
#' @param conn A [DBIConnection-class] object, as returned by
#'   [dbConnect()].
#' @param statement a character string containing SQL.
#' @param ... Other parameters passed on to methods.
#' @family DBIConnection generics
#' @seealso For updates: [dbSendStatement()] and [dbExecute()].
#' @export
dbGetQuery <- function(conn, statement, ...) {
  DBI::dbGetQuery(conn, statement, ...)

}


