# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself, with: ].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
# Code is given to us

# Initial Solution
def create_word(board, *coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
end

# Refactored Solution
# Refactored above

# DRIVER TESTS GO BELOW THIS LINE
p create_word(boggle_board, [2,1], [1,1], [1,2], [0,3])  == "code"
p create_word(boggle_board, [0,1], [0,2], [1,2])  == "rad"

# Reflection 
# Not sure if I needed to create another create_word method.

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
# Push coordinates of all entities in row to coords

# Initial Solution
def create_word_row(board, row)
    coord = []
    4.times { |x| coord << [row, x] }
    coord.map { |coord| board[coord.first][coord.last] }.join("")
end

# Refactored Solution
# Refactored above

# DRIVER TESTS GO BELOW THIS LINE
p create_word_row(boggle_board, 0) == "brae"
p create_word_row(boggle_board, 2) == "eclr"
# Reflection 
# Would've been tough to implement without create_word


<<<<<<< HEAD
#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
# Push coordinates of all entities in col to coords

# Initial Solution
def create_word_col(board, col)
    coord = []
    4.times { |x| coord << [x, col] }
    coord.map { |coord| board[coord.first][coord.last] }.join("")
end

# Refactored Solution
# Refactored above

# DRIVER TESTS GO BELOW THIS LINE
p create_word_col(boggle_board, 0) == "biet"
p create_word_col(boggle_board, 2) == "adlk"

# Reflection 
# This was just a copy of create_word_row
=======
>>>>>>> FETCH_HEAD
