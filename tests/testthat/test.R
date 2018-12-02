context("appveyor wtf-ness")

test_that("I can use the secret powers", {
  skip_if_no_secret()
  expect_true(file.exists(
    rprojroot::find_testthat_root_file("supersecret")
  ))
})

test_that("R_PROFILE_USER is nonsense (force failure and reveal", {
  expect_identical(Sys.getenv('R_PROFILE_USER'), "wtf")
})

test_that("R_ENVIRON_USER is nonsense (force failure and reveal", {
  expect_identical(Sys.getenv('R_ENVIRON_USER'), "wtf")
})
