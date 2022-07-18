L <- c(2.608, 2.526, 2.452, 2.379, 2.306, 2.231, 2.150, 2.066, 1.989, 1.917)
t <- c(129.64, 127.72, 125.92, 123.73, 122.35, 120.42, 117.88, 115.7, 113.78, 111.28)

tabla <- data.frame(L, t)
tabla
install.packages("tibble")
library(tibble)
tabla <- add_column(tabla, deltaL=NA, .after=1)
tabla[5,2] <- 0.0005
tabla <- add_column(tabla, deltat=NA, .before=3)
tabla[5, 3] <- 0.3
tabla[, "periodo"] <- tabla$t/40
tabla
