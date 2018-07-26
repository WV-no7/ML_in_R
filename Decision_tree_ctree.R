#implementation of decision tree using Ctree 
#Dataset used - ReadingSkills
#Objective - to identify readingskill score based on variables in the dataset 


# Load the party package. It will automatically load other dependent packages.

library(party)

# Print some records from data set readingSkills.
print(head(readingSkills))

# Create the input data frame.
input.dat <- readingSkills[c(1:105),]

# Give the chart file a name.
#the image of decision tree is saved in the script folder 
png(file = "decision_tree.png")

# Create the tree.
output.tree <- ctree(
  nativeSpeaker ~ age + shoeSize + score, 
  data = input.dat)

# Plot the tree.
# type command "plot(output.tree)" in console to view the plot
plot(output.tree)

# Save the file.
dev.off()