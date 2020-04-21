
# cool syntax:
# install.packages(c("devtools", "roxygen2", "testthat", "knitr"))

library(usethis)
library(devtools)
library(fs)
library(testthat)

use_git()

# (a <- factor(c("character", "hits", "your", "eyeballs")))
# #> [1] character hits      your      eyeballs
# #> Levels: character eyeballs hits your
# (b <- factor(c("but", "integer", "where it", "counts")))

# open a new script for ONLY the function guts

use_r("fbind")

# load for testing

load_all()

fbind(a,b)

# it works!

# this should bring 1-2 warnings and 0 errors

check()

# edit description as needed now

# grab a copyright on your work:
# this writes the license file(s)
# use_mit_license("Beau Meche")

# insert roxygen skeleton now, you can stylize
  # and flesh out the help file text here too

document()

# now this works: locally!

?fbind

# check that warning is gone

check()

# it is in fact the case...

# now install the package:

install()

# should end in: * DONE (testpkg03)

# now this works:

  # library(testpkg03)
  #
  # fbind(a,b)

# declare intent to create test/test framework:

use_testthat()

# create test file:

use_test("fbind")

# contents:
#   test_that("fbind() binds factor (or character)", {
#     x <- c("a", "b")
#     x_fact <- factor(x)
#     y <- c("c", "d")
#     z <- factor(c("a", "b", "c", "d"))
#
#     expect_identical(fbind(x, y), z)
#     expect_identical(fbind(x_fact, y), z)
#   })

# execute tests:

test()

# all ok, 0 fails returned (this time)

# adds relevant packages to the 'imports' section of description
# file (near bottom)


use_package("forcats")

# new function:

use_r("fcount")

# gut contents:
  # fcount <- function(x) {
  #   forcats::fct_count(x, sort = TRUE)
  # }
# new roxygen skeleton also added / filled

# load new fcn:

load_all()

# also this functions:

# fcount(iris$Species)

document()

# now this works as well:

?fcount

use_readme_rmd()

install()

library(testpkg03)

check()

# all good!!
