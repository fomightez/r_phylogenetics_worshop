# Specifying the mirrors is based on https://stackoverflow.com/a/11488224/8508004 and was added because 
# without them R complained
install.packages("ggtree", repos='http://cran.us.r-project.org') # adding this here because needs to install but trying with conda, I was seeing
# "package bioconductor-ggtree-3.0.1-r41hdfd78af_0 requires r-base >=4.1,<4.2.0a0, but none of the providers can be installed", but also saw when I
# I tried updating to r-base 4.1, still was seeing, and so trying this. This had helped with a package before, see https://github.com/fomightez/chapter7/blob/master/binder/more_installs.R