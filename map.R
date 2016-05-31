library(ggmap)
library(mapproj)
## Google啊Google给我China的地图数据吧
map <- get_map(location = 'China', zoom = 4, maptype = "roadmap")
ggmap(map) + geom_point(aes(x = 118.103886, y = 24.489231), 
                          color = 'red', size = 3)+
    annotate("text",x=118.103886,y=24.689231,
             label= c("厦門市,\n Xiamen"), cex = 4, face = "bold")

ggmap(map) + geom_point(data = locations, 
                        aes(x = lon, y = lat), 
                        color = 'red', size = 3) 