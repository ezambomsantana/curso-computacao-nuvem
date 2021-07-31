import nltk; 
nltk.download('punkt')

from nltk.tokenize import word_tokenize
from nltk.probability import FreqDist
from nltk.tokenize import sent_tokenize

import sys

f = open(sys.argv[1], "r")
text = f.read()

tokenized_text=sent_tokenize(text)
print(tokenized_text)

tokenized_word = word_tokenize(text)

print(tokenized_word)

fdist = FreqDist(tokenized_word)
print(fdist)

print(fdist.most_common(5))

import matplotlib.pyplot as plt
fdist.plot(30,cumulative=False)
plt.show()