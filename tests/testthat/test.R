context("appveyor wtf-ness")

test_that("I can use the secret powers", {
  skip_if_no_secret()
  expect_true(file.exists(
    rprojroot::find_testthat_root_file("supersecret")
  ))
})

test_that("R_USER_PROFILE is nonsense (force failure and reveal", {
  expect_identical(Sys.getenv('R_USER_PROFILE'), "wtf")
})

test_that("R_USER_ENVIRON is nonsense (force failure and reveal", {
  expect_identical(Sys.getenv('R_USER_ENVIRON'), "wtf")
})
