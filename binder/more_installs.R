# Specifying the mirrors is based on https://stackoverflow.com/a/11488224/8508004 and was added because 
# without them R complained
#install.packages("ggtree", repos='http://cran.us.r-project.org') # adding this here because needs to install but trying with conda, I was seeing
# "package bioconductor-ggtree-3.0.1-r41hdfd78af_0 requires r-base >=4.1,<4.2.0a0, but none of the providers can be installed", but also saw when I
# I tried updating to r-base 4.1, still was seeing, and so trying this. This had helped with a package before, see https://github.com/fomightez/chapter7/blob/master/binder/more_installs.R
#install.packages("treeio", repos='http://cran.us.r-project.org') # same as for ggtree
# But when RsTudio opened these didn't work.
# Oh wait. ggtree and treeio are bioconductor packages. Try this:
install.packages("BiocManager", repos='http://cran.us.r-project.org')
BiocManager::install("ggtree")
BiocManager::install("treeio")



# move ggimage to here because not at conda-forge or bioconda and conda version on genomedk channel is only 
# version 0.2.5 at https://anaconda.org/genomedk/r-ggimage ; worked out in https://github.com/fomightez/galacticEdTools-binder/blob/master/binder/more_installs.R
install.packages("ggimage", repos='http://cran.us.r-project.org')