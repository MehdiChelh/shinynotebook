# Cell's basic functions
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'


#' Cell UI
#'
#' If \code{id=NULL} the function runs an new empty notebook, else the notebook given as argument is run.
#'
#' @param id id of the notebook
#'
#' @return A shinyApp object which run in browser (see https://shiny.rstudio.com/reference/shiny/latest/shinyApp.html for more information).
#'
#' @examples
#' cellUI(id = 3)
#'
#' @import shiny
#' @import shinydashboard
#' @export
cellUI <- function(id){
  ns <- NS(id)

  fluidRow(
    shinydashboard::box(width = 12, solidHeader = TRUE, status = "primary", collapsible = TRUE,
                        title=paste("Cell", id))
  )

  # fluidRow(id = ns(id),
  #          column(12,
  #                 shinydashboard::box(
  #                   width = 16,
  #                   title = tags$span(
  #                     tags$span(actionLink(
  #                       inputId = ns("title-btn"),
  #                       label = icon("pencil"))),
  #                     tags$span(
  #                       textOutput(ns("title-text"), inline = TRUE))),
  #                   solidHeader = TRUE,
  #                   status = "primary",
  #                   collapsible = TRUE#,
  #
  #                   #if(content == "output_box")
  #                   #{
  #                     #outputBoxUI(id, ns(""))
  #                   #}
  #
  #                   #here comes the content
  #
  #                 )
  #          )
  # )
}

#' Cell server logic
#'
#' If \code{id=NULL} the function runs an new empty notebook, else the notebook given as argument is run.
#'
#' @param id id of the notebook
#'
#' @return A shinyApp object which run in browser (see https://shiny.rstudio.com/reference/shiny/latest/shinyApp.html for more information).
#'
#' @examples
#' cellUI(id = 3)
#'
#' @import shiny
#' @import shinydashboard
#' @export
cell <- function(input, output, session){
  # observeEvent(input[["title-btn"]], {
  #   print("ok")
  #   showModal(modalDialog(
  #     textInput(session$ns("modalTxtInput"), "Modify Box Name",
  #               value = "", #boxNames[[as.character(id)]],
  #               placeholder = ''
  #     ),
  #     footer = tagList(
  #       modalButton("Cancel"),
  #       actionButton(session$ns("okModal"), "OK")
  #     )
  #   ))
  #   observeEvent(input$okModal,{
  #     #boxNames[[as.character(id)]] <<- input$modalTxtInput
  #     output[["title-text"]] <- renderText({input[["modalTxtInput"]]})
  #     removeModal()
  #   })
  # })
}