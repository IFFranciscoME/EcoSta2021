
==========================
General Notes on T-Fold-SV
==========================

T-Fold Sequential-Validation Technique is a safe alternative for the K-Fold Cross-Validation when dealing
with time series data.

- Type 1: Conducting the processes of Labeling and Feature Engineering
- Type 2: Already having Target and Features

Definitions
-----------

- DS: The whole DataSet whose dimensions are: n X m
- KLD: Kullback-Liebler Divergence
- PM: Performance Metric for the model, e.g. Accuracy, Specificity, etc.
- RE: Repeated Information

- n = Total observations in the data set (arbitrarily selected)
- N = Number of Folds (arbitrarily selected)
- T = Number of observations per Fold (n//N)

To the best of our knowledge, and with the information we currently have on this implementation, It is unconsequential to have Folds of unequal size, but not so for the criteria of choosing the number of Folds or the size of the folds. The values of n and N are context dependant, and even though for financial time series in a predictive modeling process, in general, there is no shortage of historical prices, a heuristic to chose N will be that of having, for each N, n=>30. That is, it is recommended to have 30 or more observations per fold, regardless of the number of folds, since n is in turn directly related to the choosen method to fit the PDF which ultimately will be utilized to produce the KLD. Moreover, it seems plausible to consider that there could exist a set of values of n, N and the proportion between the two that could lead to numerically unestable operations or statistically invalid results, simply because such values are closely related to the calculation of the information metric between Folds. 

Algorithm
---------

- Take the 

We define OMEGA as the information matrix, which contains the KLD between to PDFs empirically adjusted to the target variable in every Fold. i.e, every element of OMEGA is the calculation of the KLD betwen the PDF in the i-th Fold and PDF in the j-th Fold, for all i,j = 2, 3, ..., N, where N is the amount of Folds with which the whole data set was sectioned. The amount of empirical data to adjust the PDF is always the same, M//N with 0 residuals. 

Because of the presence of a logarithm in the KLD calculation, every element of OMEGA is a strictly non-negative number in R. Also because KLD is not a conmutative operation, the matrix is not symmetric though is always defined and squared. The KLD of a PDF to itself is 0 so the diagonal of OMEGA its filled with 0s. 

PRACTICAL DEFINITION OF ALGORITHM 

1.- Folds Formation (FF)
1.1.- Define Fold Size 
1.2.- Create all the data sub-sets, one per each Fold.
1.2.- Define and create target variable for every Fold.

2.- Target and Feature Engineering
2,1.- Define and perform calculations for Target Variable (Labeling).
2.2.- Define* and perform calculations for Features Engineering.

3.- Information Assesment

Leakage prevention
3.1.- Calculate and purge "Embargoed" data between Target-Features between Folds (FE Dependant)

Similarity in distribution
3.2.- At every Fold, fit a PDF to the Target Variable, as measure of information.
3.3.- Calculate the KLD between every combination** of two PDFs using all Folds
3.4.- Use every KLD value to build an "Information Matrix" (IM)***
3.5.- Define an Information Threshold (IT) as a value of KLD to represent "sparse/non-sparse information"****

Sparsity Measurement
3.6.- Locate Folds with SI and NSI in the IM, in order to classify the later as:
3.6.1.- "sparse information Matrix" (SIM) when ALL values are SI
3.6.2.- "weakly sparse Information Matrix" (WSIM) when at least 1 value is NSI.
3.6.3.- "non sparse information matrix" (NSIM) when ALL values are NSI.

4.- Learning Assesment

Cases definition
4.1.- Case 1: "Sparse learning": Use a SIM for training.
4.2.- Case 2: "Weakly-Sparse Learning": Use WSIM for training.
4.3.- Case 3: "Non-Sparse Learning": Use NSIM for training.

Model definition and optimization
4.4.1.- Model definition and initialization
4.4.2.- Parameter and Hyperparameter tunning
4.4.3.- Performance metrics

5.- Generalization Assesment
5.1.- Out-Of-Sample (same performance among NSI Folds)
5.2.- Out-Of-Distribution (same performance among SI Folds)

** Since KLD is not conmutative, both KLD(A||B) and KLD(B||A) necessarily need to be computed
*** Basic characteristics of the matrix are presented
**** Sparse Information (SI):= KLD_i > IT , Non-Sparse Information (NSI):= KLD_i =< IT

* Feature Engineering Criteria

- IN-FOLD : Features engineering in every fold
It means to produce Fold specific Features using Fold specific Data

- - Heuristic (When the method produces not a unique set of features)
- - Deterministic (When the method do produce a unique set of features)

- GLOBAL: Features pre-defined for every fold
It means to produce Global Data Features to use in every Fold using ALL or a subset of specific Data

- - ALL Data
- - Heuristic (When the method produces not a unique set of features)
- - Deterministic (When the method do produce a unique set of features)

- - Specific Subset of Data
- - Heuristic (When the method produces not a unique set of features)
- - Deterministic (When the method do produce a unique set of features)
