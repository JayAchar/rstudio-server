# Install R version 3.5
FROM rocker/rstudio:3.4.2

# copy r-packages install script
COPY packages.R packages.R

# Install R packages that are required
# RUN R -e "install.packages(c('naniar', 'shinydashboard'), repos='http://cran.rstudio.com/')"
RUN Rscript packages.R
