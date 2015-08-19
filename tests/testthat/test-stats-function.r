context("stat-function")

test_that("stat-function", {
  dat <- data.frame(x = c(0.1, 1:100))
  dat$y <- dexp(dat$x)

  base <- ggplot(dat, aes(x, y)) +
    stat_function(fun = dexp)

  full <- base +
    scale_x_continuous(limits = c(0.1, 100)) +
    scale_y_continuous()
  ret <- pdata(full)[[1]]

  full_log <- base +
    scale_x_log10(limits = c(0.1, 100)) +
    scale_y_continuous()
  ret_log <- pdata(full_log)[[1]]

  expect_equal(ret$y[c(1, 101)], ret_log$y[c(1, 101)])
  expect_equal(range(ret$x), c(0.1, 100))
  expect_equal(range(ret_log$x), c(-1, 2))
  expect_false(any(is.na(ret$y)))
  expect_false(any(is.na(ret_log$y)))
})
