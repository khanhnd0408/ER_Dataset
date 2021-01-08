import os
import sys
full_path = os.getcwd()
for i in range(22,36):
	branch = "Batch_%d" %i
	from_folder = "batch_" + str(i)
	if not os.path.exists(os.path.join(full_path, from_folder)):
		os.mkdir(os.path.join(full_path, from_folder))
	command = "process.bat %s %s" %(branch, from_folder)
	os.system(command)