library(ggmap)
library(mapproj)

Hebei_Shexian <- c(36.5854602124,113.6906263506)
Hebei_Cixian <- c(36.3739774397,114.3738993115)
Henan_linxian <- c(36.0830717880,113.819096700)
Sichuan_Yanting <- c(31.2082552759,105.3899408104)

lat <- c(36.5854602124, 36.3739774397, 36.0830717880, 31.2082552759)
lon <- c(113.6906263506, 114.3738993115, 113.819096700, 105.3899408104)
names <- c("Shexian", "Cixian", "Linxian", "Yanting")
locations <- data.frame(names, lon, lat)

map <- get_map(c(center$lon, center$lat), zoom = 4, maptype = 'roadmap')
ggmap(map)

map <- get_map(location = "China", zoom = 4, maptype = 'roadmap')
ggmap(map) + geom_point(data = locations, 
                        aes(x = lon, y = lat), 
                        color = 'red', size = 3) +
  annotate("text",x=112.6906263506,y=37.3854602124,
           label= c("Shexian\nHebei"), cex = 4) + 
  annotate("text", x=116.3738993115, y = 36.3739774397, 
           label = c("Cixian\nHenan"), cex = 4) + 
  annotate("text", x=113.819096700, y=35.5830717880, 
           label = c("Linxian\nHenan"), cex = 4) + 
  annotate("text", x=107.5899408104, y = 31.2082552759, 
           label = c("Yanting\nSichuan"), cex = 4)
