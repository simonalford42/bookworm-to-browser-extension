*Use File: Journal Data Final.dta

*Code to create Table 1 / Figure 1 data
* Book category = Book and Book Section
tabulate Reference Year, column

*Code to create Table 2 / Figure 2
bysort subfield: tabulate Reference Year, column


* Use File: Aggregated Data.dta
*Code to create Table 3 data
by Journal, sort : tabstat references, statistics( sum ) by(Year)


*Code to Create Figure 3
tabstat references, statistics( mean ) by(Year)
by Journal: tabstat references, statistics( mean ) by(Year)
