#' @Title AddSquares
#'
#' @Description FanScout takes Twitter searches based on all 30 MLB teams and filters
#' the data so that user_id, text, retweet_count, favorite_count, and source are shown.
#' This will then be used to plot the data in various different ways so that
#' it is nice and easy to read and interpret.
#'
#' @Details
#'
#' @author Noah Nordsiek
#'
#' @param x A number.
#'
#' @param y A number.
#'
#' @return The sum of \code(x)^2 and \code(y)^2
#'
#' @examples
#' add_squares(1, 2)
#' add_squares(1, -2)
#'
#' @export

add_squares = function(x, y){

  x^2 + y^2

}

