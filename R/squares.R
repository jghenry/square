#' An S3 class to represent a square
#' square
#' @param side A number to represent the length of the side
#' @return A square object with side value
#' @export
#' @examples
#' square(3)

# create a function to create an object with side as value and set its class as square
square <- function(s) {
  if(!is.double(s)) stop('side length must be a number')
  else if(s <= 0) stop('side length must be positive')
  value <- list(side = s)
  
  #set the class to square 
  attr(value, "class") <- "square"
  value
}

# define generic function area
area <- function(obj) {
  UseMethod("area")
}

# implement default method for area
area.default <- function(obj) {
  cat("This is a generic function\n")
}

#' area.square() function
#' @return The area of a square with \code{side} 
#' @examples
#' area(square(3))

# calculate area of square
area.square <- function(obj) {
  return(obj$side^2)
}

# define generic function perimeter
perimeter <- function(obj) {
  UseMethod("perimeter")
}

# implement default method for perimeter
perimeter.default <- function(obj) {
  cat("This is a generic function\n")
}


#' perimeter.square() function
#' @return The perimeter of a square with \code{side}
#' @examples
#' perimeter(square(3))

# calculate perimeter of square
perimeter.square <- function(obj) {
  return(obj$side*4)
}

