# U2.W6: Create a BoggleBoard Class


# I worked on this challenge by myself.


# 2. Pseudocode



# 3. Initial Solution

# dice_grid = [["b", "r", "a", "e"],
#              ["i", "o", "d", "t"],
#              ["e", "c", "l", "r"],
#              ["t", "a", "k", "e"]]

# class BoggleBoard

#     def initialize(dice_grid)
#         @board = dice_grid
#     end

#     def create_word(*coords)
#         coords.map { |coord| @board[coord.first][coord.last]}.join("")
#     end
 
#     def create_word_row(row)
#         coord = []
#         4.times { |x| coord << [row, x] }
#         coord.map { |coord| @board[coord.first][coord.last] }.join("")
#     end

#     def create_word_col(col)
#         coord = []
#         4.times { |x| coord << [x, col] }
#         coord.map { |coord| @board[coord.first][coord.last] }.join("")
#     end

#     def create_all_rows_cols()
#         create_word_row(0) + " " +  
#         create_word_row(1) + " " +  
#         create_word_row(2) + " " +  
#         create_word_row(3) + " " +  
#         create_word_col(0) + " " +  
#         create_word_col(1) + " " +  
#         create_word_col(2) + " " +  
#         create_word_col(3)
#     end

#     def access(x,y)
#         return @board[x][y] 
#     end

# end
 
# boggle_board = BoggleBoard.new(dice_grid)
# p boggle_board.create_word([1,2], [1,1], [2,1], [3,2] ) == "dock"
# p boggle_board.create_word_row(1) == "iodt"
# p boggle_board.create_word_col(1) == "roca"
# p boggle_board.create_all_rows_cols == "brae iodt eclr take biet roca adlk etre"
# p boggle_board.access(3,2) == "k"

# 4. Refactored Solution


dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]

class BoggleBoard

    def initialize(dice_grid)
        @board = dice_grid
    end

    def create_word(*coords)
        coords.map { |coord| @board[coord.first][coord.last]}.join("")
    end
 
    def create_word_row(row)
        coord = []
        4.times { |x| coord << [row, x] }
        coord.map { |coord| @board[coord.first][coord.last] }.join("")
    end

    def create_word_col(col)
        coord = []
        4.times { |x| coord << [x, col] }
        coord.map { |coord| @board[coord.first][coord.last] }.join("")
    end

    def create_all_rows_cols()
        create_word_row(0) + " " +  
        create_word_row(1) + " " +  
        create_word_row(2) + " " +  
        create_word_row(3) + " " +  
        create_word_col(0) + " " +  
        create_word_col(1) + " " +  
        create_word_col(2) + " " +  
        create_word_col(3)
    end

    def access(x,y)
        return @board[x][y] 
    end

end

# 1. DRIVER TESTS GO BELOW THIS LINE
boggle_board = BoggleBoard.new(dice_grid)
# create driver test code to retrieve a value at a coordinate here:
p boggle_board.access(3,2) == "k"
# implement tests for each of the methods here:
p boggle_board.create_word([1,2], [1,1], [2,1], [3,2] ) == "dock"
p boggle_board.create_word_row(1) == "iodt"
p boggle_board.create_word_col(1) == "roca"
p boggle_board.create_all_rows_cols == "brae iodt eclr take biet roca adlk etre"

# 5. Reflection 
# There could be an easier way to do the create_all_rows_cols method.
# Also I used instance variables in the previous assignemtn so this barley different 
# from week 5 boggle board.