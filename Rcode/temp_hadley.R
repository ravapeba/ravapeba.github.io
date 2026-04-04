# source(paste0(raizR,'temp_hadley.R'),encoding='latin1')
# directorios locales
raizR <-  'C:/F/clima/r/'; dir_clima_img <- 'c:/F/clima/img/'; dir_clima_datos <- 'c:/F/clima/datos/'
library(ggplot2); library(latex2exp); library(dplyr)

#### hadley center global temperature data and plots

get_hadley <- function() {
  # gets Hadley Center's Global Temperature Series
  
  had_data <- 'https://www.metoffice.gov.uk/hadobs/hadcrut5/data/'
  url_hadley <- paste0(had_data,'HadCRUT.5.1.0.0/analysis/diagnostics/HadCRUT.5.1.0.0.analysis.summary_series.global.annual.csv')

  temp_hadley <- read.csv(url_hadley, header=TRUE, sep=','); names(temp_hadley) <- c('Year','Tanom','lower','upper')
 
 # change reference period from 1961-1990 to pre-industrial (1850-1900)
  media_prei <- mp <- -0.3564947; temp_hadley$Tanom <- temp_hadley$Tanom-mp; temp_hadley$lower <- temp_hadley$lower-mp
  temp_hadley$upper <- temp_hadley$upper-mp; return(temp_hadley)
  
}# fin de get_hadley

temp_hadley <- get_hadley()

# grafico ggplot

lx <- xbreaks <- seq(1855,2025,by=10); ly <- ybreaks <- seq(-0.5,1.5,by=0.25) 
xlab <- 'Año' ; ylab <- 'Anomalía de temperatura (ºC)'
latexto1 <- TeX(r"($\uparrow $)"); latexto2 <- TeX(r"($ \uparrow \Delta T_{global} >1.5^\circ C \uparrow $)")
latexto3 <- TeX(r"($1.5^\circ C = $)"); texto4 <-'Límite al calentamiento glogal acordado en Paris 2015' 

ggplot_hadley <- function(data){
	ggplot(data[1:nrow(data)-1,],aes(x = Year, y = Tanom, ymin=lower,ymax=upper))+
	theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1,size=12))+theme(axis.title=element_text(size=16, color='black'))+
	theme(plot.title = element_text(color='#0000FF',size=16,hjust= 0.2,vjust = -21))+
	scale_x_continuous(breaks = xbreaks)+ scale_y_continuous(breaks = ybreaks)+xlab(xlab)+ylab(ylab)+
	geom_hline(yintercept=0, linewidth=.4, linetype="solid", color = "grey")+
	geom_hline(yintercept=1.5, linewidth=.4, linetype="dashed", color = "black", alpha=0.8)+ 
	geom_ribbon(fill = "#DCBCBC",alpha=0.9)+
	geom_line(data=data[1:nrow(data)-1,],aes(x = Year, y = Tanom),col='#EE0000',linewidth=0.35)+
	annotate("text", x = c(1974), y =c(1.58), label=c(latexto2),angle=0,col='black',hjust='left')+
	geom_label(aes(x = 1900, y = 1.5, label = texto4), fill = "grey90")%>%return
}

plot_hadley <- ggplot_hadley(temp_hadley)
ggsave(file=paste0(dir_clima_img,"temp_hadley2025b.svg"), plot=plot_hadley, width=8, height=6)

# plot data hadley smooth10
mov10 = stats::filter(temp_hadley$Tanom, filter = rep(1/10, 10), method = 'convolution', sides = 1)
upper10 <- stats::filter(temp_hadley$upper, filter = rep(1/10, 10), method = 'convolution', sides = 1)
lower10 <- stats::filter(temp_hadley$lower, filter = rep(1/10, 10), method = 'convolution', sides = 1)

temp_hadley10 <- data.frame(temp_hadley$Year,mov10,lower10,upper10); 
names(temp_hadley10) <- c("Year","Tanom","lower","upper")


plot_hadley10 <- ggplot_hadley(temp_hadley10)

# plot both annual-decadal hadley
plot_hadley_1y10 <- plot_hadley+plot_hadley10
ggsave(file=paste0(dir_clima_img,"serie_hadley_1y10.svg"), plot=plot_hadley_1y10, width=8, height=6)
