#'ODBC list drivers
#'
#'Uses an ODBC checkertool to grab available and installed ODBC drivers
#'
#'@export

odbcListDrivers <- function() {
  odbc::odbcListDrivers()
}
