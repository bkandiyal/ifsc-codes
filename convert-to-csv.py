#!/usr/bin/python

import pandas as pd

df = pd.read_excel('68774.xlsx', dtype='str')

df.to_csv('IFSC.csv', index=False)
