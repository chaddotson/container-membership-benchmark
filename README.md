# container-membership-benchmark
This repo contains code to test container membership.  Namely the "in" operator.  It includes benchmarks for a list, set, frozenset and dict implementation.  This will execute using both the default python interpretor and pypy (if installed).

**Objective:**

I constructed these scripts to test and quantify speed inconsistences between platforms due to implementation differences.

**Running the Benchmarks:**

Command line: `$ ./runit.sh`

**Conditions:**

*Versions:*  
Python: 2.6  
PyPy: 2.4

*Handling differences between specs:*
Theoretically, testing a container for membership should be fastest in with *set* or especially *frozenset*.  So, to attempt to get a more apples-to-apples comparison, I will calculate a % difference between each result and the fastest result for that set.

**System Specs:**

*Machine 1:*  
OS: OSX Yosemite  
CPU: 2.3 GHz Intel Core i7  
MEMORY: 16 GB  

*Machine 2:*  
OS: Ubuntu 14.04  
CPU: AMD Phenom 9850 x4 2.5 GHz  
MEMORY: 4 GB


**Results:**

|           | Benchmarks | Fastest | % Difference |
|-----------|------------|---------|--------------|
|    **OSX**    |            |         |              |
|   **Python**  |            |         |              |
| list      |       5.47 |         |      150.641 |
| set       |       0.85 |         |        9.877 |
| frozenset |       0.85 |         |        9.877 |
| dict      |       0.77 |    0.77 |        0.000 |
|    **PyPy**   |            |         |              |
| list      |       0.34 |         |       89.362 |
| set       |       0.13 |    0.13 |        0.000 |
| frozenset |       0.13 |    0.13 |        0.000 |
| dict      |       0.13 |    0.13 |        0.000 |
|           |            |         |              |
|   **Ubuntu**  |            |         |              |
|   **Python**  |            |         |              |
| list      |       6.07 |         |      123.733 |
| set       |       1.44 |         |        0.697 |
| frozenset |       1.49 |         |        4.110 |
| dict      |       1.43 |    1.43 |        0.000 |
|    **PyPy**   |            |         |              |
| list      |       0.78 |         |      102.913 |
| set       |       0.25 |    0.25 |        0.000 |
| frozenset |       0.25 |    0.25 |        0.000 |
| dict      |       0.26 |         |        3.922 |


**Raw Results:**

*Machine 1:*  
python list.py 100x - average: 5.47s  
python set.py 100x - average: 0.85s  
python frozenset.py 100x - average: 0.85s  
python dict.py 100x - average: 0.77s  
pypy list.py 100x - average: 0.34s  
pypy set.py 100x - average: 0.13s  
pypy frozenset.py 100x- average: 0.13s  
pypy dict.py 100x - average: 0.13s  

*Machine 2:*  
python list.py 100x - average: 6.07s  
python set.py 100x - average: 1.44s  
python frozenset.py 100x - average: 1.49s  
python dict.py 100x - average: 1.43s  
pypy list.py 100x - average: 0.78s  
pypy set.py 100x - average: 0.25s  
pypy frozenset.py 100x - average: 0.25s  
pypy dict.py 100x - average: 0.26s  
