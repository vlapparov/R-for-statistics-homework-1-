#' Title
#'
#' @param the_name name that we are looking for
#' @param the_sex the sex of our guy
#'
#' @return a ggplot
#' @import prenoms ggplot2 dplyr dygraphs tidyr
#' @export
#'
#' @examples
#' \dontrun{
#' draw_a_name(the_name = "Vincent",the_sex = "M")
#' draw_a_name( "Diane", "F")
#' }
draw_a_name <- function(the_name, the_sex){
  temp <- prenoms %>%
    filter(name == the_name, sex == the_sex) %>%
    group_by(year) %>%
    summarise(total = sum(n))

  return(ggplot(temp, aes(year, total)) +
           geom_line())
}
