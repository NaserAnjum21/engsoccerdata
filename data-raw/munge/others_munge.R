
## Germany munge


library(tidyverse)

tail(germany)

germany %>%
  filter(Season>2011) %>%
  group_by(tier,Season) %>%
  count()

germany_current(Season=2017)
germany_current(Season=2018)
germany_current(Season=2019)
germany_current(Season=2020)


ex<-
rbind(
  germany_current(Season=2017),
  germany_current(Season=2018),
  germany_current(Season=2019)
)

head(ex)
tail(ex, 50)

ex[is.na(ex$home),]
ex[grepl("agd", ex$home),]

tail(teamnames)

teams <- unique(c(as.character(ex$home),as.character(ex$visitor)))

teams

# 1. FC Magdeburg
# SC Paderborn

teamnames[grepl("bur", teamnames$name),]
teamnames[grepl("ader", teamnames$name),]

teams %in% teamnames$name

head(teamnames)
teamnames$name


germany_current(Season=2018) %>% filter(tier==2)


# bind
germany <- rbind(germany,ex)

germany %>%
  filter(Season>2011) %>%
  group_by(tier,Season) %>%
  count()

tail(germany)

## update steps
usethis::use_data(germany, overwrite = T)
write.csv(germany,'data-raw/germany.csv',row.names=F)
devtools::load_all()



# redo documentation   devtools::document()
devtools::load_all()

devtools::document()


# rebuild
# redo checks




####----------------------------------------------------#####
head(france)
tail(france)

library(tidyverse)
france %>%
  filter(Season>2011) %>%
  group_by(tier,Season) %>%
  count()

france_current(Season=2017)
france_current(Season=2018)  #one NA             "Nimes"
france_current(Season=2019)   # possibly two NA    "Brest" "Nimes"
france_current(Season=2020)  # possibly two NA   "Nimes" "Brest" "Lens"

#use check current teamnames

engsoccerdata::teamnames[grepl("ime", engsoccerdata::teamnames$name),]  #Nimes Olympique
engsoccerdata::teamnames[grepl("rest", engsoccerdata::teamnames$name),] #Stade Brest
engsoccerdata::teamnames[grepl("ens", engsoccerdata::teamnames$name),] #RC Lens






# bind

ex<-
  rbind(
    france_current(Season=2017),
    france_current(Season=2018),
    france_current(Season=2019)
  )

france <- rbind(france,ex)


france %>%
  filter(Season>2011) %>%
  group_by(tier,Season) %>%
  count()

tail(france)

## update steps
usethis::use_data(france, overwrite = T)
write.csv(germany,'data-raw/france.csv',row.names=F)
devtools::load_all()



# redo documentation   devtools::document()
devtools::load_all()

devtools::document()

#rebuild
#redo checks



####----------------------------------------------------#####
head(belgium)
tail(belgium)

library(tidyverse)
belgium %>%
  filter(Season>2011) %>%
  group_by(tier,Season) %>%
  count()

belgium_current(Season=2017)
belgium_current(Season=2018)
belgium_current(Season=2019)

belgium_current(Season=2020)  #one NA  Beerschot   aka  K Beerschot VA

#use check current teamnames

engsoccerdata::teamnames[grepl("eer", engsoccerdata::teamnames$name),]  #  "Beerschot VA"
engsoccerdata::teamnames[grepl("ilr", engsoccerdata::teamnames$name),]  #



# bind

ex<-
  rbind(
    belgium_current(Season=2017),
    belgium_current(Season=2018),
    belgium_current(Season=2019)
  )

belgium <- rbind(belgium,ex)


belgium %>%
  filter(Season>2011) %>%
  group_by(tier,Season) %>%
  count()

tail(belgium)

## update steps
usethis::use_data(belgium, overwrite = T)
write.csv(belgium,'data-raw/belgium.csv',row.names=F)
devtools::load_all()

#redoing screwup
df <- read.csv("data-raw/belgium.csv")
tail(df)


load("data/belgium.rda")
tail(belgium)

dim(belgium)

#update current

# redo documentation   devtools::document()
devtools::load_all()

devtools::document()

#rebuild
#redo checks



#####------------------------------------------------------------------------------------#####

head(greece)
tail(greece)

library(tidyverse)
greece %>%
  filter(Season>2011) %>%
  group_by(tier,Season) %>%
  count()

greece_current(Season=2017)  #"Lamia"
greece_current(Season=2018)  # "Lamia"     "OFI Crete" (should be OFI)
greece_current(Season=2019)  # "Lamia"     "Volos NFC" "OFI Crete"  (Volos NFC are a new team, not old Volos)

greece_current(Season=2020)  # "OFI Crete" "Lamia"     "Volos NFC"

#use check current teamnames

engsoccerdata::teamnames[grepl("eer", engsoccerdata::teamnames$name),]  #  "Beerschot VA"
engsoccerdata::teamnames[grepl("ilr", engsoccerdata::teamnames$name),]  #


# bind

ex<-
  rbind(
    greece_current(Season=2017),
    greece_current(Season=2018),
    greece_current(Season=2019)
  )

greece <- rbind(greece,ex)

library(tidyverse)
greece %>%
  filter(Season>2011) %>%
  group_by(tier,Season) %>%
  count()

tail(greece)

## update steps
usethis::use_data(greece, overwrite = T)
write.csv(greece,'data-raw/greece.csv',row.names=F)
devtools::load_all()

dim(greece)

#update current

# redo documentation   devtools::document()
devtools::load_all()

devtools::document()

#rebuild
#redo checks


####---------------------------------------------------------------------------####


head(holland)
tail(holland)

library(tidyverse)
holland %>%
  filter(Season>2011) %>%
  group_by(tier,Season) %>%
  count()

holland_current(Season=2017)  # 2017... date needs fixing.
holland_current(Season=2018)  #"Graafschap"  "For Sittard" "FC Emmen"
holland_current(Season=2019)  # "FC Emmen"    "For Sittard" "Waalwijk"

holland_current(Season=2020)  # "FC Emmen"    "Waalwijk"    "For Sittard"

#use check current teamnames

engsoccerdata::teamnames[grepl("itt", engsoccerdata::teamnames$name),]  #
engsoccerdata::teamnames[grepl("aaf", engsoccerdata::teamnames$name),]  #


# bind

ex<-
  rbind(
    holland_current(Season=2017),
    holland_current(Season=2018),
    holland_current(Season=2019)
  )

holland <- rbind(holland,ex)

library(tidyverse)
holland %>%
  filter(Season>2011) %>%
  group_by(tier,Season) %>%
  count()

tail(holland)


## update steps
usethis::use_data(holland, overwrite = T)
write.csv(holland,'data-raw/holland.csv',row.names=F)
devtools::load_all()

dim(holland)

#update current

# redo documentation   devtools::document()
devtools::load_all()

devtools::document()

#rebuild
#redo checks



####---------------------------------------------------------------------------####


head(italy)
tail(italy)

library(tidyverse)
italy %>%
  filter(Season>2011) %>%
  group_by(tier,Season) %>%
  count()

italy_current(Season=2017)  #
italy_current(Season=2018)  # "Parma"     "Frosinone"
italy_current(Season=2019)  # "Parma"   "Lecce"   "Brescia"

italy_current(Season=2020)  # "Parma"  "Spezia"

#use check current teamnames

engsoccerdata::teamnames[grepl("arm", engsoccerdata::teamnames$name),]  #
engsoccerdata::teamnames[grepl("ecc", engsoccerdata::teamnames$name),]  #
engsoccerdata::teamnames[grepl("esci", engsoccerdata::teamnames$name),]  #
engsoccerdata::teamnames[grepl("pez", engsoccerdata::teamnames$name),]  #
engsoccerdata::teamnames[grepl("rosi", engsoccerdata::teamnames$name),]  #


# bind

ex<-
  rbind(
    italy_current(Season=2017),
    italy_current(Season=2018),
    italy_current(Season=2019)
  )

italy <- rbind(italy,ex)

library(tidyverse)
italy %>%
  filter(Season>2011) %>%
  group_by(tier,Season) %>%
  count()

tail(italy)


## update steps
usethis::use_data(italy, overwrite = T)
write.csv(italy,'data-raw/italy.csv',row.names=F)
devtools::load_all()

dim(italy)

#update current

# redo documentation   devtools::document()
devtools::load_all()

devtools::document()

#rebuild
#redo checks




####---------------------------------------------------------------------------####


head(portugal)
tail(portugal)

library(tidyverse)
portugal %>%
  filter(Season>2011) %>%
  group_by(tier,Season) %>%
  count()

portugal_current(Season=2017)  #
portugal_current(Season=2018)  #
portugal_current(Season=2019)  # "Famalicao"

portugal_current(Season=2020)  # "Famalicao"

#use check current teamnames

engsoccerdata::teamnames[grepl("ama", engsoccerdata::teamnames$name),]  #


# bind

ex<-
  rbind(
    portugal_current(Season=2017),
    portugal_current(Season=2018),
    portugal_current(Season=2019)
  )

portugal <- rbind(portugal,ex)

library(tidyverse)
portugal %>%
  filter(Season>2011) %>%
  group_by(tier,Season) %>%
  count()

tail(portugal)


## update steps
usethis::use_data(portugal, overwrite = T)
write.csv(portugal,'data-raw/portugal.csv',row.names=F)
devtools::load_all()

dim(portugal)

#update current

# redo documentation   devtools::document()
devtools::load_all()

devtools::document()

#rebuild
#redo checks


####---------------------------------------------------------------------------####


head(scotland)
tail(scotland)

library(tidyverse)
scotland %>%
  filter(Season>2011) %>%
  group_by(tier,Season) %>%
  count()

s01 = scotland_current(Season=2017)  #
s01
s01[is.na(s01$home),]

s01 = scotland_current(Season=2018)  #
s01
s01[is.na(s01$home),]

s01 = scotland_current(Season=2019)  #
s01
s01[is.na(s01$home),]
s01[is.na(s01$visitor),]

s01 = scotland_current(Season=2020)  #
s01
s01[is.na(s01$home),]
s01[is.na(s01$visitor),]


#use check current teamnames

engsoccerdata::teamnames[grepl("ama", engsoccerdata::teamnames$name),]  #


# bind

ex<-
  rbind(
    scotland_current(Season=2017),
    scotland_current(Season=2018),
    scotland_current(Season=2019)
  )

scotland <- rbind(scotland,ex)

library(tidyverse)
scotland %>%
  filter(Season>2011) %>%
  group_by(tier,Season) %>%
  count() %>%
  as.data.frame()

tail(scotland)


## update steps
usethis::use_data(scotland, overwrite = T)
write.csv(scotland,'data-raw/scotland.csv',row.names=F)
devtools::load_all()

dim(scotland)

#update current

# redo documentation   devtools::document()
devtools::load_all()

devtools::document()

#rebuild
#redo checks




####---------------------------------------------------------------------------####


head(spain)
tail(spain)

library(tidyverse)
spain %>%
  filter(Season>2011) %>%
  group_by(tier,Season) %>%
  count()

spain_current(Season=2017)  #
spain_current(Season=2018)  # "Vallecano"  "Valladolid" "Huesca"
spain_current(Season=2019)  # "Mallorca"   "Valladolid"

spain_current(Season=2020)  #  "Cadiz"      "Valladolid" "Huesca"     "Elche"

#use check current teamnames

engsoccerdata::teamnames[grepl("diz", engsoccerdata::teamnames$name),]  #
engsoccerdata::teamnames[grepl("alla", engsoccerdata::teamnames$name),]  #
engsoccerdata::teamnames[grepl("ues", engsoccerdata::teamnames$name),]  #
engsoccerdata::teamnames[grepl("lch", engsoccerdata::teamnames$name),]  #
engsoccerdata::teamnames[grepl("allo", engsoccerdata::teamnames$name),]  #
engsoccerdata::teamnames[grepl("alle", engsoccerdata::teamnames$name),]  #


# bind

ex<-
  rbind(
    spain_current(Season=2017),
    spain_current(Season=2018),
    spain_current(Season=2019)
  )

spain <- rbind(spain,ex)

library(tidyverse)
spain %>%
  filter(Season>2011) %>%
  group_by(tier,Season) %>%
  count()

tail(spain)


## update steps
usethis::use_data(spain, overwrite = T)
write.csv(spain,'data-raw/spain.csv',row.names=F)
devtools::load_all()

dim(spain)

#update current

# redo documentation   devtools::document()
devtools::load_all()

devtools::document()

#rebuild
#redo checks





####---------------------------------------------------------------------------####


head(turkey)
tail(turkey)

library(tidyverse)
turkey %>%
  filter(Season>2011) %>%
  group_by(tier,Season) %>%
  count()

turkey_current(Season=2017)  #
turkey_current(Season=2018)  # "Erzurum BB"
turkey_current(Season=2019)  # "Gaziantep"

turkey_current(Season=2020)  #  "Karagumruk" "Hatayspor"  "Erzurum BB" "Gaziantep"

#use check current teamnames

engsoccerdata::teamnames[grepl("arag", engsoccerdata::teamnames$name),]  #
engsoccerdata::teamnames[grepl("atay", engsoccerdata::teamnames$name),]  #
engsoccerdata::teamnames[grepl("zur", engsoccerdata::teamnames$name),]  #
engsoccerdata::teamnames[grepl("azi", engsoccerdata::teamnames$name),]  #


# bind

ex<-
  rbind(
    turkey_current(Season=2017),
    turkey_current(Season=2018),
    turkey_current(Season=2019)
  )

turkey <- rbind(turkey,ex)

library(tidyverse)
turkey %>%
  filter(Season>2011) %>%
  group_by(tier,Season) %>%
  count()

tail(turkey)


## update steps
usethis::use_data(turkey, overwrite = T)
write.csv(turkey,'data-raw/turkey.csv',row.names=F)
devtools::load_all()

dim(turkey)

#update current

# redo documentation   devtools::document()
devtools::load_all()

devtools::document()

#rebuild
#redo checks

