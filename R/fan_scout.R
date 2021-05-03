#' @Title fan_scout
#'
#' @Description Fanscout takes Twitter searches and plots it out.
#'
#' @Details FanScout takes Twitter searches based on all 30 MLB teams and filters
#' the data so that user_id, text, retweet_count, favorite_count, and source are shown.
#' This will then be used to plot the data in various different ways so that
#' it is nice and easy to read and interpret.
#'
#'@importFrom magrittr "%>%"
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

 RaysPlot = raystweets %>%
   filter(display_text_width >= 0L & display_text_width <= 0L) %>%
   filter(!(quoted_location %in%
              "") | is.na(quoted_location)) %>%
   filter(!(retweet_location %in% "") | is.na(retweet_location)) %>%
   ggplot() +
   aes(x = screen_name, colour = favorite_count, weight = favorite_count) +
   geom_bar(fill = "#0c4c8a") +
   scale_color_viridis_c(option = "viridis") +
   theme_minimal()

 # Assign object a name with this code
  assign("test", RaysPlot, envir = .GlobalEnv)
  # all of this must stay inside the function
}

Fanscout("@RaysBaseball")
