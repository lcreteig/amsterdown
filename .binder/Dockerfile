FROM rocker/binder:3.6.0
LABEL maintainer='Leon Reteig'
USER root
COPY . ${HOME}
RUN chown -R ${NB_USER} ${HOME}
USER ${NB_USER}



RUN wget https://github.com/lcreteig/amsterdown/raw/master/DESCRIPTION && R -e "options(repos = list(CRAN = 'http://mran.revolutionanalytics.com/snapshot/2020-03-28/')); devtools::install_deps(); devtools::install(); tinytex::install_tinytex()"

RUN rm DESCRIPTION.1; exit 0
