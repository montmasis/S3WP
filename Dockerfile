FROM rocker/shiny:latest

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git libxml2-dev libmagick++-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Command to install standard R packages from CRAN; enter the list of required packages for your app here
RUN Rscript -e 'install.packages(c("shiny","BiocManager"))'

# Command to install packages from Bioconductor; enter the list of required Bioconductor packages for your app here
RUN Rscript -e 'BiocManager::install(c("InteractiveComplexHeatmap", "ComplexHeatmap"),ask = F)'

RUN rm -rf /srv/shiny-server/*
# copy the single visits application to the folder single-visits
COPY S3WP_single_visits_interactive_1_font /srv/shiny-server/single-visits
# copy the average application to the folder average
COPY S3WP_average_interactive_1_font  /srv/shiny-server/average
# copy the homepage
COPY index.html /srv/shiny-server/index.html

USER shiny

EXPOSE 3838

CMD ["/usr/bin/shiny-server"]
