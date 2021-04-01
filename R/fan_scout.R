#' @Title fan_scout
#'
#' @Description Fanscout takes Twitter searches and plots it out.
#'
#' @Details FanScout takes Twitter searches based on all 30 MLB teams and filters
#' the data so that user_id, text, retweet_count, favorite_count, and source are shown.
#' This will then be used to plot the data in various different ways so that
#' it is nice and easy to read and interpret.
#'
#' @author Noah Nordsiek
#'
#' @param Search twitter for x a keyword.
#'
#' @param plot the data for y and z, being interactions, timing, etc.
#'
#' @return A set of plot objects based on parameters x, y, and z.
#' the plots will have to be manually inputed.
#'
#' @examples
#' Fanscout("RaysBaseball", "en", "Twitter for iPhone")
#'
#' @export
#'

Fanscout = function(x = "@RaysBaseball", y = "en", z = "Twitter for iPhone"){

  # Search Twitter for "@RaysBaseball"

  RaysSearch = rtweet::search_tweets(x, language = y, source = z)

 RaysPlot = ggplot2::ggplot(RaysSearch, ggplot2::aes(x = text, y = source)) +
    ggplot2::geom_point()

 # Assign object a name with this code
  assign("test", RaysPlot, envir = .GlobalEnv)
  # all of this must stay inside the function
}

