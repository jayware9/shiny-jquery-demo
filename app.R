library(shiny)

ui <- fluidPage(
  tags$head(
    tags$script(src = "demo.js"), #include the javascript file - this needs to be in the app's www folder
    tags$style(".redText {color:red}") #create a CSS class style for red Text
  ),
  tags$button(id="my_button",type="button","Click Me!!!"),
  p(id="my_text","Some text that we want to show and hide. Click the",
    a(class="my_links",target="_blank",href="https://www.google.co.uk"," link"), "to change input$input_id, and the text colour")
  
)

server <- function(input,output) {
  observeEvent(input$input_id,{
    print(input$input_id)
  })
  
}

shinyApp(ui,server)