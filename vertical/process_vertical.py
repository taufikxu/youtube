import os
import numpy as np
import pickle

filelist = os.listdir('./index/')
filelist = filelist[::-1]

index_list = []

for filename in filelist:
	with open('./index/' + filename) as f:
		s = f.readlines()[0]
		s = s.strip().split()
		l = [int(item) for item in s]
		index_list.append(l)


# vertical_sizes
vertical_sizes = []
for vertical, index in zip(filelist, index_list):
	vertical_sizes.append(len(index))
	print vertical, len(index)

# gather_indices
index_list_all = []
for index in index_list:
	index_list_all += index
index_list_all_array = np.array(index_list_all)

gather_indices = np.argsort(index_list_all_array)

# lstm_sizes
lstm_sizes = []
for size in vertical_sizes:
	layer2 = max(50, int(size * 0.6))
	layer1 = max(100, min(400, int(1.75 * layer2)))
	lstm_sizes.append([layer1, layer2])

# lstm_sizes
lstm_sizes = []
for size in vertical_sizes:
	layer2 = max(80, int(size * 0.7))
	lstm_sizes.append([layer2])

with open('index_res.pkl', 'wb') as f:
	pickle.dump({'lstm_sizes': lstm_sizes, 'vertical_sizes': vertical_sizes, 'gather_indices': gather_indices, 'gather_labels': index_list_all_array}, f)