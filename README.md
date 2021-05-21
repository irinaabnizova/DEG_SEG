# DEG_SEG
DEGs and SEGs sets filling with GE from OPSB and NPSB GE, different formats.

Generally, w employed several strategies to identify DEGs:
a)	Intersection of pairwise significant differentially genes, three comparisons, significance as a Z-score.
b)	Intersection of pairwise significant genes, three comparisons, significance as a MAD-score (Leys 2013)
c)	Dominance index across lineages, Margalef, Berger-Parker indexes ( Yeom 2011)
d)	Coefficient of variation across lineages, CV=sd/mean
e)	Unsupervised Clustering (seq_monk application of DESeq)
f)	Min-max variance across three layers: e.g. similarity 2% of mean, high variance.
SEGs across all three lineages were obtained by the following strategies:
a)	Minimization of dominance indexes
b)	Min-max variance across three layers: e.g. similarity 98% of mean, if std is 2% of mean.
We used a set of marker genes for each lineage to optimise and calibrate our best DEGs.

