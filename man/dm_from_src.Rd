% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dm_from_src.R
\name{dm_from_src}
\alias{dm_from_src}
\title{`dm_from_src()` creates a [dm] from some or all tables in a [src]
(a database or an environment) or which are accessible via a DBI-Connection.
For Postgres and SQL Server databases, primary and foreign keys
are imported from the database.}
\usage{
dm_from_src(src = NULL, table_names = NULL, learn_keys = NULL, ...)
}
\arguments{
\item{src}{A \pkg{dplyr} table source object or a
[`DBI::DBIConnection-class`] object is accepted.}

\item{table_names}{A character vector of the names of the tables to include.}

\item{learn_keys}{`r lifecycle::badge("experimental")`

  Set to `TRUE` to query the definition of primary and
  foreign keys from the database.
  Currently works only for Postgres and SQL Server databases.
  The default attempts to query and issues an informative message.}

\item{...}{`r lifecycle::badge("experimental")`

  Additional parameters for the schema learning query.

  - `schema`: supported for MSSQL (default: `"dbo"`), Postgres (default: `"public"`), and MariaDB/MySQL
    (default: current database). Learn the tables in a specific schema (or database for MariaDB/MySQL).
  - `dbname`: supported for MSSQL. Access different databases on the connected MSSQL-server;
    default: active database.
  - `table_type`: supported for Postgres (default: `"BASE TABLE"`). Specify the table type. Options are:
    1. `"BASE TABLE"` for a persistent table (normal table type)
    2. `"VIEW"` for a view
    3. `"FOREIGN TABLE"` for a foreign table
    4. `"LOCAL TEMPORARY"` for a temporary table}
}
\value{
A `dm` object.
}
\description{
`dm_from_src()` creates a [dm] from some or all tables in a [src]
(a database or an environment) or which are accessible via a DBI-Connection.
For Postgres and SQL Server databases, primary and foreign keys
are imported from the database.
}
