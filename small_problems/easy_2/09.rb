# Both name and save_name print "BOB"
# the #upcase! method mutates the caller.
# Since save_name is assigned to name, they occupy the same memory space,
# and as such both have the same object id, and thus they both point
# to the same mutated object.
