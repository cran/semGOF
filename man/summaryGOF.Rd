\Rdversion{0.1-0}
\name{summaryGOF}

\alias{summaryGOF}
\alias{semGOF}
\alias{chisqNull}
\alias{chisqNull.objectiveML}
\alias{print.summaryGOF}

\title{
Goodness-of-Fit indeces in structural equation models for \pkg{sem} 
}
\description{
summaryGOF computes fourteen Goodness--of--Fit indeces in addiction to the output of \pkg{sem} (Fox, Byrnes, Culbertson, Friendly, Kramer & Monette; 2011).}
\usage{
summaryGOF(object, digits = 5, ...)
}

\arguments{
\item{object}{an object of class sem returned by the \code{\link{sem}} function (see \bold{Examples} below).}
\item{digits}{number of digits for printed output.}
\item{\dots}{
additional arguments affecting the summary produced (see \code{\link{summary}}).}
}

\details{
The goodness of fit indeces calculated in \pkg{semGOF}:
\describe{
\item{ICOMP}{Information Complexity (Bozdogan, 1990)}
\item{Fml}{Fit Function of maximum likelihood (Long, 1986).}   
\item{d}{Estimate of minimized population discrepancy function (McDonald, 1989).} 
\item{Mc}{McDonald's Centrality Index (McDonald, 1989).}
\item{RNI}{Relative Noncentrality Index (Bentler, 1990).}
\item{IFI}{Incremental Fit Index (Bollen, 1989).}
\item{chisq.df}{Chi-square/df ratio (Marsh & al., 1988).}
\item{CAK}{Rescaled version of AIC (Cudeck and Browne, 1983).}
\item{CSK}{Information Criterion (Schwartz, 1978).}
\item{CN}{Critical N (Hoelter, 1983), (Hu & Bentler, 1999).}
\item{Gamma.hat}{Gamma hat (Steiger, 1989), (Hu & Bentler, 1999).}
\item{BL86}{Bollen's Fit Index (Bollen, 1986).}
\item{W}{Wheaton Index (Wheaton et al., 1977).}
\item{ECVI}{Expected Cross Validation Index (Browne & Cudeck, 1992).}
}
}

\references{
Bentler, P. M. (1990)
Comparative fit indeces in structural equation models.
\emph{Psychological Bulletin}
\bold{107}:238--246.

Bollen, K. A. (1986)
Sample size and Bentler and Bonnett's nonnormed fit index.
\emph{Psychometrika}
\bold{51}:375--377.

Bollen, K. A. (1989)
A new incremental fit index for general structural equation models.
\emph{Sociological Methods and Research}
\bold{17}:303--316.

Bozdogan, H. (1990)
Akaike's criterion and recent developments in information complexity.
\emph{Journal of Mathematical Psychology}
\bold{44}:62--91.

Browne, M. W., Cudeck, R. (1992)
Alternative ways of assessing model fit.
\emph{Sociological Methods and Research}
\bold{21}:230--258.
 
Cudeck, R., Browne, M. W.(1983)
Cross--validation of covariance structure.
\emph{Multivariate Behavioral Research}
\bold{18}:147--167.

John Fox, Jarrett Byrnes, with contributions from Michael Culbertson,
Michael Friendly, Adam Kramer and Georges Monette. (2011)
\emph{sem: Structural Equation Models. R package version 2.1-1}.
\url{http://CRAN.R-project.org/package=sem}

Fox, L. (2006)
Structural equation modeling with the sem package in R.
\emph{Structural equation modeling}
\bold{13}:465--486.

Hoelter, J. W.(1983)
The analysis of covariance structure: goodness of fit indeces.
\emph{Sociological Methods and Research}
\bold{11}:325--344.

Hu, J.,Bentler, P M. (1999)
Cutoff criteria for fit indexes in covariance structure analysis: conventional criteria versus new alternatives.
\emph{Stuctural equation modeling}
\bold{6}:1--55.

Long J. S. (1986)
\emph{Confirmatory Factor Analysis}.
California, SAGE.

Marsh, H. W., Balla, J. R. McDonald, R. P. (1988)
Goodness--of--fit in confirmatory factor analysis: the effect of sample size.
\emph{Psychological Bulletin}
\bold{3}:391--410.

McDonald, R. P. (1989)
An index of goodeness of fit based on noncentrality.
\emph{Journal of Classification}
\bold{6}:97--103.

Schwartz, G. (1978)
Estimating the dimantion of the model.
\emph{Annals of Statistics}
\bold{6}:461--464.

Venables, W. N. & Ripley, B. D. (2002)
\emph{Modern Applied Statistics with S}.
Fourth Edition. Springer, New York.
ISBN 0-387-95457-0.

Wheaton, B., Muthen, B., Alwin, D. F., Summers, G. (1977)
Assessing reliability and stability in panel models.
\emph{Sociological Methodology}
\bold{8}:84--136.
}

\author{
Bertossi Elena \email{bertossielena@gmail.com}
}

\section{Warning }{\pkg{semGOF} must be used with \pkg{sem}.} 


\seealso{
\code{\link{sem}}
}

\examples{






# The following model has been created with
# six observed endogenous variables, 
# two unobserved endogenous variables and
# four unobserved exogenous variables.

S <- matrix(c(
        
1.0000,  0.0000,  0.0000,  0.0000,  0.0000,  0.0000,  0.0000,  0.0000,  0.0000,  0,
0.6321,  1.0000,  0.0000,  0.0000,  0.0000,  0.0000,  0.0000,  0.0000,  0.0000,  0,
0.5932,  0.5881,  1.0000,  0.0000,  0.0000,  0.0000,  0.0000,  0.0000,  0.0000,  0,
0.0965,  0.0987,  0.1564,  1.0000,  0.0000,  0.0000,  0.0000,  0.0000,  0.0000,  0,
0.1785,  0.1256,  0.1124,  0.4567,  1.0000,  0.0000,  0.0000,  0.0000,  0.0000,  0,
0.2135,  0.2003,  0.0762,  0.5589,  0.6097,  1.0000,  0.0000,  0.0000,  0.0000,  0,
0.3875,  0.4011,  0.3211,  0.0134,  0.0189,  0.0556,  1.0000,  0.0000,  0.0000,  0,
0.3569,  0.3989,  0.3301,  0.1323,  0.1036,  0.1132,  0.3215,  1.0000,  0.0000,  0,
0.1034,  0.1201,  0.1010,  0.2981,  0.3265,  0.2920,  0.1092,  0.0981,  1.0000,  0,
0.1324,  0.0622,  0.0123,  0.3056,  0.3525,  0.2661,  0.1234,  0.1207,  0.2221,  1
   
      ), ncol=10, byrow=TRUE)

rownames(S) <- c("Y1", "Y2", "Y3", "Y4", "Y5", "Y6", 
                 "CSI1", "CSI2", "CSI3", "CSI4")
colnames(S) <- c("Y1", "Y2", "Y3", "Y4", "Y5", "Y6",
                 "CSI1", "CSI2", "CSI3", "CSI4")



ram.I <- matrix(c(
#               heads   to      from    param  start
                1,       1,     11,      1,     NA, # lam1
                1,       2,     11,      0,     0.750,
                1,       3,     11,      2,     NA, # lam2
                1,       4,     12,      3,     NA, # lam3
                1,       5,     12,      4,     NA, # lam4
                1,       6,     12,      0,     0.800,
                1,      11,      7,      5,     NA, # gam1
                1,      11,      8,      6,     NA, # gam2
                1,      12,      9,      7,     NA, # gam3
                1,      12,     10,      8,     NA, # gam4
                2,       1,      1,      9,     NA, # theta1
                2,       2,      2,     10,     NA, # theta2
                2,       3,      3,     11,     NA, # theta3
                2,       4,      4,     12,     NA, # theta4
                2,       5,      5,     13,     NA, # theta5
                2,       6,      6,     14,     NA, # theta6
                2,      11,     11,     15,     NA, # psi1
                2,      12,     12,     16,     NA  # psi2
              
                ), ncol=5, byrow=TRUE)


params.I <- c('lam1', 'lam2', 'lam3', 'lam4', 'gam1', 'gam2', 
              'gam3', 'gam4', 'theta1', 'theta2', 'theta3',
              'theta4', 'theta5', 'theta6', 'psi1', 'psi2')

                 
vars.I <- c('Y1', 'Y2', 'Y3', 'Y4', 'Y5', 'Y6', 'CSI1',
             'CSI2', 'CSI3', 'CSI4', 'ETA1', 'ETA2')

                
sem.I <- sem(ram.I, S, 250, param.names=params.I,
             var.names=vars.I, fixed.x=7:10)



summaryGOF(sem.I)


# Goodness-of-Fit indeces of structural equation models for 'sem' package

# ICOMP =  -14.964
# Fml =  0.19582
# RNI =  0.97065
# IFI =  0.97133
# chisq.df =  1.6814
# CN =  231.91
# Gamma.hat =  0.98438
# BL86 =  0.89465
# W =  1.6814
# d =  0.079042
# Mc =  0.96125
# CAK =  0.27582
# CSK =  0.41668
# ECVI =  0.40466 
}

\keyword{models}
