#Test 1.1) 
library(testthat)

testthat::test_that("Global Workspace'te spotify_token adl?? bir de??i??ken olmal??", {
  expect_true(exists("spotify_token", envir = .GlobalEnv))
})


#Test 1.2) 
testthat::test_that("spotify_token adl?? de??i??kenin tipi 'function' olmal??", {
  expect_true(is.function(spotify_token))
})


#Test 1.3)
testthat::test_that("spotify_token() ??a??r??ld??????nda d??nd??rd?????? ????kt?? bir liste olmal??", {
  result <- spotify_token()
  expect_true(is.list(result))
})

#Test 1.4)
testthat::test_that("spotify_token() ??a??r??ld??????nda d??nd??rd?????? listenin iki elementi olmal??", {
  result <- spotify_token()
  expect_length(result, 2)
})

#Test 1.5)
testthat::test_that("spotify_token() ??a??r??ld??????nda d??nd??rd?????? listenin ilk elementinin ismi status_code olmal??", {
  result <- spotify_token()
  expect_true("status_code" %in% names(result))
})

#Test 1.6)
testthat::test_that("spotify_token() ??a??r??ld??????nda d??nd??rd?????? listenin ilk elementinin class'?? numeric olmal??", {
  result <- spotify_token()
  expect_true(is.numeric(result$status_code))
})

#Test 1.7)
testthat::test_that("spotify_token() ??a??r??ld??????nda d??nd??rd?????? listenin status_code adl?? elementinin de??eri 200'e e??it olmal??", {
  result <- spotify_token()
  expect_equal(result$status_code, 200)
})

#Test 1.8)
testthat::test_that("spotify_token() ??a??r??ld??????nda d??nd??rd?????? listenin ikinci elementinin ismi token olmal??", {
  result <- spotify_token()
  expect_true("token" %in% names(result))
})

#Test 1.9)
testthat::test_that("spotify_token() ??a??r??ld??????nda d??nd??rd?????? listenin ikinci elementinin class'?? character olmal??", {
  result <- spotify_token()
  expect_true(is.character(result$token))
})

#Test 1.10)
testthat::test_that("spotify_token() ??a??r??ld??????nda d??nd??rd?????? listenin ikinci elementi 'Bearer ' ile ba??lamal??", {
  result <- spotify_token()
  expect_true(startsWith(result$token, "Bearer "))
})

#Test 1.11) 
testthat::test_that("spotify_token() ??a??r??ld??????nda d??nd??rd?????? listenin ikinci elementi character de??i??keninin i??inde 122 adet harf bulunmal??", {
  result <- spotify_token()
  expect_length(strsplit(result$token, "")[[1]], 122)
})

