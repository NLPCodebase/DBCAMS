# DBCAMS

Assessing Database Contribution via Distributed Tracing for Microservice Systems.

# Introduction of Code

We provide three parts of the code: the analytic hierarchy process (AHP) and the code for two systems (Sock-Shop, TrainTicket) in the main experiment.

For the part of the AHP code, AHP.m implements the consistency test to the pair-wise comparison matrix and calculates the corresponding hierarchical single sorting result.

The codes of main experiments are introduced by taking the Sock Shop system as an example:

DBCAMS.m corresponds to the method of DBCAMS.

DBCAMS_MMD.m corresponds to the method of DBCAMS_MMD.

DBCAMS_RN.m corresponds to the method of DBCAMS_RN.

The remaining functions are called in these three files.



# Introduction of Data

We provide the original pair-wise comparison matrice given by five experts and the hierarchical total sorting results of two system business scenarios.

