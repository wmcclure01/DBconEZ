#'@importFrom DBI dbConnect
#'
NULL
#' Create a connection to a DBMS
#'
#' Connect to a DBMS going through the appropriate authentication procedure.
#' Some implementations may allow you to have multiple connections open, so you
#' may invoke this function repeatedly assigning its output to different
#' objects.
#' The authentication mechanism is left unspecified, so check the
#' documentation of individual drivers for details.
#' Use [dbCanConnect()] to check if a connection can be established.
#'
#'
#'
#'
#'
#'
#'
#' @param drv an object that inherits from [DBIDriver-class],
#'   or an existing [DBIConnection-class]
#'   object (in order to clone an existing connection).
#' @param ... authentication arguments needed by the DBMS instance; these
#'   typically include `user`, `password`, `host`, `port`, `dbname`, etc.
#'   For details see the appropriate `DBIDriver`.
#' @seealso [dbDisconnect()] to disconnect from a database.
#' @family DBIDriver generics
#' @family DBIConnector generics
#' @export
#'
DBconnect <- function(drv, ...) {
  DBI::dbConnect(drv, ...)

}

