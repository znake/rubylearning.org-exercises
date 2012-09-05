#Exercise3. Make use of the class Dir for the following -

#Display your current working directory.
root_directory = Dir.pwd
puts root_directory

#Create a new directory tmp under your working directory.
Dir.mkdir(root_directory + "/tmp")

#Change your working directory to tmp
Dir.chdir(root_directory + "/tmp")

#Display your current working directory.
puts Dir.pwd

#Go back to your original directory.
Dir.chdir(root_directory)

#Delete the tmp directory.
Dir.delete(root_directory + "/tmp")
