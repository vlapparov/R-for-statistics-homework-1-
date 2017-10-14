#' Import all sheets from an excel file
#'
#' @param file path to xlsx file
#' @import readxl
#' @return a list
#' @export
#'
#' @examples
#' \dontrun{
#' multi_excel("/folder/to/xlsx/file")
#' }
multi_excel <- function(file){
  sheets <- readxl::excel_sheets(file)
  temp <- lapply(sheets, function(sht){
    readxl::read_excel(file, sheet = sht)
  })
  return(temp)
}
