context("appveyor wtf-ness")

test_that("I can use the secret powers", {
  skip_if_no_secret()
  expect_true(file.exists(
    rprojroot::find_testthat_root_file("supersecret")
  ))
})

test_that("I can reveal R_PROFILE_USER and R_ENVIRON_USER (meant to fail)", {
  expect_identical(
    Sys.getenv(c("R_PROFILE_USER", "R_ENVIRON_USER")),
    c("wtf", "wtf")
  )
})
