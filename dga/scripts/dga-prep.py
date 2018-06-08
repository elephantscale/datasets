import pandas as pd
import numpy as np
from wordsegment import load, segment
load()

dga = pd.read_csv('dga.csv')
dga.columns = ['site', 'source', 'label']

dga['label'] = dga['label'].apply(lambda x : 'legit' if str(x)[0] == 'l' else 'dga')
dga['toplevel'] = dga['site'].apply(lambda x: str(x).split('.')[-1])
dga['domain'] = dga['site'].apply(lambda x: str(x).split('.')[-2])
dga['words'] = dga['site'].apply(lambda x: ' '.join(segment(x)))

dga.to_csv('dga-dataset-words.csv')
