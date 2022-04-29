# DBconEZ

# DBconEZ

DBconEZ (database connection EZ) is a package designed in bringing the most useful functions for SQL based exploration and retrieval of a data set

## Installation

HTTPS https://github.com/wmcclure01/DBconEZ.git

SSH git@github.com:wmcclure01/DBconEZ.git 

gitHub CLI gh repo clone wmcclure01/DBconEZ




## Usage

```r
library(DBI)
# Create an connection in-memory MySQL database
con <- DBconnect(RMySQL::MySQL(), 
                 dbname = "sakila", 
                 host = "xxx.xxx.xx.xx", 
                 port = xxxxx,
                 user = "User",
                 password = "Password")

# You can create a in-DB SQL query
dbGetQuery(con,"Select based Query")

# RETURNs all installed ODBCs 
odbcListDrivers()

# Stores Data Model of Table(s)
con_dm <- dm_from_src(con, learn_keys = FALSE) 
```
## Classes

There are four main DBI classes. Three which are each extended by individual database backends:
<ul>
<li>DBIObject: a common base class for all DBI.<li>

<li>DBIDriver: a base class representing overall DBMS properties. Typically generator functions instantiate the driver objects like RSQLite(), RPostgreSQL(), RMySQL() etc.<li>

<li>DBIConnection: represents a connection to a specific database <li>

<li>DBIResult: the result of a DBMS query or statement.</li>
</ul>

All classes are virtual: they cannot be instantiated directly and instead must be subclassed.
## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)
##R final project package
See rpubs Markdown 
 http://rpubs.com/Goldendesign04/895779
  See wordpress writeup
https://goldendesignanalytics.wordpress.com/2022/04/28/final-project-r-programming/
