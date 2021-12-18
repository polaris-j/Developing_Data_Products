# UI.R

library(shiny)

shinyUI(
  navbarPage("My First Shiny Application",
             tabPanel("Analysis",
                      fluidPage(
                        titlePanel("(mtcars) Data Analysis"),
                        sidebarLayout(
                          sidebarPanel(
                            selectInput("variable", "Attribute:",
                                        c("Number of cylinders" = "cyl",
                                          "Displacement (cu.in.)" = "disp",
                                          "Gross horsepower" = "hp",
                                          "Rear axle ratio" = "drat",
                                          "Weight (lb/1000)" = "wt",
                                          "1/4 mile time" = "qsec",
                                          "V/S" = "vs",
                                          "Transmission" = "am",
                                          "Number of forward gears" = "gear",
                                          "Number of carburetors" = "carb"
                                        )),
                            
                            checkboxInput("outliers", "Show BoxPlot's outliers", FALSE)
                          ),
                          
                          mainPanel(
                            h3(textOutput("caption")),
                            
                            tabsetPanel(type = "tabs", 
                                        tabPanel("BoxPlot", plotOutput("mpgBoxPlot")),
                                        tabPanel("Linear Regression Model", 
                                                 plotOutput("mpgPlot"),
                                                 verbatimTextOutput("fit")
                                        )
                            )
                          )
                        )
                      )
             ),
             tabPanel("About the data",
                      h2("Motor Trend Car Road Tests"),
                      hr(),
                      h3("Description : "),
                      helpText("The data was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973-74 models)."),
              ),
             
             tabPanel("More Data Detail",
                      h2("Motor Trend Car Road Tests"),
                      hr(),
                      h3("Format"),
                      p("A data frame with 32 observations on 11 variables."),
                      
                      p("  [, 1]   mpg         Miles/(US) gallon"),
                      p("  [, 2]	 cyl	 Number of cylinders"),
                      p("  [, 3]	 disp	 Displacement (cu.in.)"),
                      p("  [, 4]	 hp	 Gross horsepower"),
                      p("  [, 5]	 drat	 Rear axle ratio"),
                      p("  [, 6]	 wt	 Weight (lb/1000)"),
                      p("  [, 7]	 qsec	 1/4 mile time"),
                      p("  [, 8]	 vs	 V/S"),
                      p("  [, 9]	 am	 Transmission (0 = automatic, 1 = manual)"),
                      p("  [,10]	 gear	 Number of forward gears"),
                      p("  [,11]	 carb	 Number of carburetors"),
                      
                      h3("Source"),
                      
                      p("Henderson and Velleman (1981), Building multiple regression models interactively. Biometrics, 37, 391-411.")
             ),
             tabPanel("How to use this app",
                      h2("Motor Trend Car Road Tests"),
                      hr(),
                      h3("Description"),
                      helpText("This shiny application generates the linear regression between two variables of the mtcars dataset. One of these 2 variables is always miles per gallon which is surrogate for fuel consumption.",
                               "Thus, this application can simply correlate fuel consumption to 10 aspects of automobile design and performance",
                               " for 32 automobiles (1973-74 models)."),
                      h3("How to use"),
                      p("Please follow these steps:"),
                      
                      p("  [1]   select an automobile attribute form the drop-down variables list"),
                      p("  [2]	 check/uncheck the checkbox to include/exclude outliers"),
                      p("  [3]	 Select the 'Boxplot' tab to get a boxplot representation of the data"),
                      p("  [4]	 Select the 'Linear Regression Model' tab to view the corresponding plot")
                      
             ),
             tabPanel("Go back to my Github repository",
                      h3("https://github.com/polaris-j/Developing_Data_Products/"),
                      hr(),
                      h2("Please enrich this application with your comments/feedback."),
                      h2("Github repository: Developing-Data-Products"),
                      helpText("There you will find both server.R & ui.R files")
             ),
             tabPanel("Go back to my ShinyApp.io",
                      hr(),
                      h2("My course project app is located in the link bellow:"),
                      h3("https://polaris-j.shinyapps.io/shinyapp")
                      
             )
  )
)