theme_ml <- function() { 
  require(ggplot2)
  require(showtext)
  font <- font_add_google("Nunito", family = "Nunito")
  showtext_auto()
  showtext_opts(dpi = 300)
  
  theme_bw() %+replace%    #replace elements we want to change
    
    theme(
      
      strip.background = element_rect(
        color="black", fill= 'white', size=0),
      
      axis.line = element_line(colour = "black"),
      panel.grid.major = element_blank(),
      panel.grid.minor = element_blank(),
      panel.border = element_blank(),
      panel.background = element_blank(),
      
      #text elements
      plot.title = element_text(             #title
        family = "Nunito",            #set font family
        size = 13,                #set font size
        face = 'bold',            #bold typeface
        hjust = 0,                #left align
        margin=margin(10,0,0,0),
        vjust = 2),               #raise slightly
      
      plot.subtitle = element_text(          #subtitle
        family = "Nunito",            #font family
        size = 11,
        margin=margin(10,0,10,0),
        hjust = 0),               #font size
      
      plot.caption = element_text(           #caption
        family = "Nunito",            #font family
        size = 11, 
        margin=margin(10,0,0,0), #font size
        hjust = 1),               #right align
      
      axis.title = element_text(             #axis titles
        family = "Nunito",            #font family
        size = 13),               #font size
      
      axis.text = element_text(              #axis text
        family = "Nunito",            #axis famuly
        size = 13),                #font size
      
      axis.text.x = element_text(            #margin for axis text
        margin=margin(5, b = 10)) 
      
      #since the legend often requires manual tweaking 
      #based on plot content, don't define it here
    )
}

colours_memorylab <- c("#871F4C", "#2F178C", "#23263B", "#DC2E62", "#3D1FB7", "#8A1FB7", "#A61C8B","#7A7BE8", "#7A1466", "#69178C")