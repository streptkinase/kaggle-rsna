import pandas as pd
import os



print(os.listdir('data/submission/'))
output_csv_files = os.listdir('data/submission/')
df_list = []
for i, f in enumerate(output_csv_files):
    print(i)
    df_list.append(pd.read_csv(os.path.join('data/submission', f)))
    #print(df)
df_merged = df_list[0]
for df in df_list[1:]:
   df_merged = pd.merge(df_merged, df, on='ID')
print(df_merged)
df_merged['avg'] = df_merged.apply(lambda x: (x[1] + x[2] + x[3] + x[4] + x[5]) / 5, axis=1) 
print(df_merged)
df_merged = df_merged[['ID', 'avg']]
df_merged.columns = ['ID', 'Label']
print(df_merged)
df_merged.to_csv('submission.csv', index=False)

