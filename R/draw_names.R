#' Draw the evolution af several names
#'
#' @param names the names you want to observe
#'
#' @return a ggplot
#' @import tidyr ggplot2 prenoms dplyr
#' @export
#'
#' @examples
#' \dontrun{ draw_names(c("Vincent", "Alex"))}
draw_names <- function(names){
  prenoms %>% filter(name %in% names) %>%
    group_by(year,name) %>%
    summarize(count=n()) %>%
    ggplot(aes(x=year, y=count,color=name))+ geom_line()
}
