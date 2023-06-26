#include necessary libraries
import csv 
import random

#define initial set of communities
communities = set()

# parse csv file
with open('communities.csv', 'r') as csv_file:
	reader = csv.reader(csv_file)
	for row in reader:
		communities.add(row[0])

# define function to add communities
def add_community(name):
	communities.add(name)

# define function to remove communities
def remove_community(name):
	communities.remove(name)

# define function to find a community
def find_community(name):
	if name in communities:
		return True
	else:
		return False

# define function to connect communities
def connect_communities():
	num_communities = len(communities)
	if num_communities > 1:
		community1 = random.choice(list(communities))
		communities.remove(community1)
		community2 = random.choice(list(communities))
		# add code to actually connect the two communities
		print(f'Connection established between {community1} and {community2}.')
	else:
		print('Not enough communities available for connection.')

# define function to print current list of communities
def print_communities():
	print(', '.join(communities))

# function calls
add_community('Berkeley')
remove_community('Fresno')
print_communities()
connect_communities()
print(find_community('Berkeley'))