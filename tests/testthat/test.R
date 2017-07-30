context("appveyor wtf-ness")

test_that("I can use the secret powers", {
  skip_if_no_secret()
  expect_true(file.exists(
    rprojroot::find_package_root_file("supersecret")
  ))
})
