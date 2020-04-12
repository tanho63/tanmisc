# tanmisc
Tantastic, Miscellaneous, and Mostly Shiny R Functions

## Installation

Install from GitHub with:

``` r
# install.packages("devtools") OR install.packages("remotes") ## remotes is a subpackage of devtools
remotes::install_github("tanho63/tanmisc")
```

## Functions List

- `gen_input_*()` generates a list of Shiny Inputs (either for a list of length *n* or for a given list of identifiers)
- `read_inputs()` returns the values of a given list of input IDs
- `unbind_dt()` "unbinds" the Shiny inputs in a table, which is helpful if they are generated/regenerated reactively.
- `fmt_dtcol()` colours a DT column based on either the column's minimum and maximum values, or a manually-generated min/max.
