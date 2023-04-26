def list_dir(path):
	print("\n Listing the directory .......\n")
	for root, dirs, files in os.walk(path):
		for file in files:
			print("The file: " + os.path.join(root, file))

list_dir(".")
