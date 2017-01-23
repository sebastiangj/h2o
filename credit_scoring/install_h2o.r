# ------------------------------------------------------------------------------
# Step 1: Install R Packages
#
# Install "h2o" for machine learning
# Reference: http://www.h2o.ai/download/h2o/r
# ------------------------------------------------------------------------------
# The following two commands remove any previously installed H2O packages for R.
if ("package:h2o" %in% search()) { detach("package:h2o", unload=TRUE) }
if ("h2o" %in% rownames(installed.packages())) { remove.packages("h2o") }
# Let's download packages that H2O depends on.
if (! ("methods" %in% rownames(installed.packages()))) { install.packages("methods") }
if (! ("statmod" %in% rownames(installed.packages()))) { install.packages("statmod") }
if (! ("stats" %in% rownames(installed.packages()))) { install.packages("stats") }
if (! ("graphics" %in% rownames(installed.packages()))) { install.packages("graphics") }
if (! ("RCurl" %in% rownames(installed.packages()))) { install.packages("RCurl") }
if (! ("jsonlite" %in% rownames(installed.packages()))) { install.packages("jsonlite") }
if (! ("tools" %in% rownames(installed.packages()))) { install.packages("tools") }
if (! ("utils" %in% rownames(installed.packages()))) { install.packages("utils") }
# Download, install and initialize the H2O package for R.
install.packages("h2o", type="source", 
                 repos=(c("http://h2o-release.s3.amazonaws.com/h2o/rel-turing/10/R")))
# Test, if the H2O library is installed properly
suppressPackageStartupMessages(library(h2o))
h2o.init(nthreads = -1)
# Finally, let's run a demo on K-means clustering to see H2O at work.
demo(h2o.kmeans)