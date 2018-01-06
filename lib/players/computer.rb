module Players
  class Computer < Player

    def move(board)

      win_combinations = [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8],
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8],
        [0, 4, 8],
        [6, 4, 2],
      ]
      good_move = win_combinations.detect do |array|
        board.cells[array[0]] == board.cells[array[1]] && board.cells[array[2]] == " " || board.cells[array[1]] == board.cells[array[2]] && board.cells[array[0]] == " " || board.cells[array[0]] == board.cells[array[2]] && board.cells[array[1]] == " "

        if good_move != nil
          target = good_move.detect do |index|
            if board.cells[index] == " "
              index 
            end
          end

          answer = target + 1

          answer.to_s




        elsif  board.cells[4] == " "
          "5"
        elsif board.cells[0] == " "
          "1"
        elsif board.cells[2] == " "
          "3"
        elsif board.cells[6] == " "
          "7"
        elsif board.cells[8] == " "
          "9"
        elsif board.cells[1] == " "
          "2"
        elsif board.cells[3] == " "
          #"4"
        elsif board.cells[5] == " "
          #"6"
        else board.cells[7] == " "
          "8"
        end
      end
  end
end
end



#def move(board)
#if board.cells[4] == " "
  #"5"
#elsif board.cells[0] == " "
  #"1"
#elsif board.cells[2] == " "
  #"3"
#elsif board.cells[6] == " "
  #"7"
#elsif board.cells[8] == " "
  #"9"
#elsif board.cells[1] == " "
  #"2"
#elsif board.cells[3] == " "
  #"4"
#elsif board.cells[5] == " "
  #"6"
#else board.cells[7] == " "
  #8"
#end
