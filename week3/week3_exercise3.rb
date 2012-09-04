#Exercise3. Make use of the class Dir for the following -

#Display your current working directory.
working_directory = Dir.pwd
puts working_directory

#Create a new directory tmp under your working directory.
Dir.mkdir(working_directory + "/tmp")

#Change your working directory to tmp
Dir.chdir(working_directory + "/tmp")

#Display your current working directory.
puts Dir.pwd

#Go back to your original directory.
Dir.chdir(working_directory)

#Delete the tmp directory.
Dir.delete(working_directory + "/tmp")
