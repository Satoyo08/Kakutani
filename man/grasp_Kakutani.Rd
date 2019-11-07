\name{grasp_Kakutani}
\alias{grasp_Kakutani}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
generates multiple plots to summarize some characters of a given gene list
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function generates;

topleft: boxplot comparing gene length of all 'protein coding gene' and your list

topmiddle: boxplot comparing gene expression level of all 'protein coding gene' and your list

top right: pie chart representing category of genes of all the Araport11 annotation. Number of genes is inside ().

middle right; pie chart representing category of genes in your list.

bottom; subchromosomal distribution of genes in you list, all protein coding genes, and transposable element gene. x-axis represents chromosome 1 to 5, from left to right. y-axis is frequency. Centromeres are visualized as transposable element genes(green) rich regions.



}
\usage{
grasp_Kakutani(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
list of AGI in a form of AT*G****** (e.g. AT1G01010).
If your list contains AGI for TE (e.g. AT1TE00010) this function just ignores them and makes plots with the rest.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
'protein coding gene' here is all the genes annotated as such in Araport11 annodation.

the expression data is from Oya's mRNA-seq in 16 dai Col_0 seedling. The read count of three experiments were averaged after normalization with whole reads and gene length(RPKM). CAUTION; reads count is based on tair10 annotaion, despite all the other plots are based on Araport11. This means if your list contains genes newliy annotated in Araport11, they will be omitted from Expression plot.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~

}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
head(test_list)
#this package automatically loads a AGI list "test_list" for demo.
grasp_Kakutani(test_list)
#you will see the genes in test_list are ; lather long, moderately expressed,
100\% protein coding, and located in the middle of chromosome arm (not in centromere nor end of the chromosome)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
