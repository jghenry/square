library(testthat)
library(squares)

context("testing circle methods")

#test class

shape <- square(3)

#test area

area(shape)

#test perimeter

perimeter(shape)

test_that("test class creation", {
  expect_is(square(3), 'square')
})

test_that("test empty input", {
  expect_error(square())
})

test_that("test negative input", {
  expect_error(square(-3))
})

test_that("test impossible input", {
  expect_error(square('circle'))
})

test_that("test area method", {
  expect_equal(area(square(3)), 9)
  })

test_that("test perimeter method", {
  expect_equal(perimeter(square(3)), 12)
})


