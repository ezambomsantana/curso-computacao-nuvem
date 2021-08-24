# cluster-spark-basic.py
from pyspark import SparkConf
from pyspark import SparkContext

import random

def specific_string(length):  
    sample_string = 'pqrstuvwxy' # define the specific string  
    # define the condition for random string  
    result = ''.join((random.choice(sample_string)) for x in range(length))  
    return result
  
valor = specific_string(100000000) 

#valor = specific_string(1000) 

def verifica(dict, value):
    if value in dict:
        dict[value] = dict[value] + 1
    else:
        dict[value] = 1


import time


start = time.time()
dict = {}

for l in valor:
    verifica(dict, l)

end = time.time()
print(dict)
print(end - start)


conf = SparkConf()

conf.setAppName('spark-basic')
sc = SparkContext(conf=conf)

text = sc.parallelize(valor,24)

counts = text.map(lambda word: (word, 1)) \
             .reduceByKey(lambda a, b: a + b)

start = time.time()
output = counts.collect()
end = time.time()

print(output)
print(end - start)
