context("sem")

test_that("sem works", {

  # a single value shouldn't work.
  a<-sem(sample(1:100,1))
  expect_true(is.na(a))

  # check if it works despite NAs
  x<-sample(1:100,20)
  x[sample(1:20,5)]<-NA
  b<-sem(x)
  expect_false(is.na(b))


})
