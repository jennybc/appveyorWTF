skip_if_no_secret <- function() {
  if (!file.exists(rprojroot::find_package_root_file("supersecret"))) {
    skip("supersecret not available :(")
  }
}
