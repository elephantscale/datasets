import pandas as pd
import json,os, requests
from pathlib import Path

photos = pd.read_csv('../photos/photos.txt.gz', sep=',', header=None, error_bad_lines=False, warn_bad_lines=False, index_col=0, names=['url'])

categories = ['belts', 'dresses', 'leggings']

train_test = ['train', 'test']

base_dir = "../images"

for category in categories:
    for tt in train_test:
        filename = '../meta/json/' + tt + '_pairs_' + category + '.json'
        print(filename)
        with open(filename) as f:
            meta = json.load(f)
            for row in meta[:10]:
                photo_num = row['photo']
                url = photos.loc[photo_num]['url']
                print(url)
                save_filename = os.path.join(base_dir, tt, category, str(photo_num) + '.jpg')
                path = Path(os.path.join(base_dir, tt, category))
                path.mkdir(parents=True, exist_ok=True)
                print(save_filename)
                with open(save_filename, 'wb+') as savefile:
                    savefile.write(requests.get(url).content)




