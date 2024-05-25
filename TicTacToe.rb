class TicTacToe

    def initialize()
    @wining_array =[[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    @board = [[nil,nil,nil],[nil,nil,nil],[nil,nil,nil]]
      @user = 0
    end
    def get_input
      until @board.flatten.any?(nil) == false
      puts "Enter two digit for position:"
      input = gets.chomp.split(",")
      @x = input[0].to_i
      @y = input[1].to_i
      if (@x < 0 || @x > 2) || (@y < 0 || @y > 2)
        puts "Enter valid number [0..2]!"
      else
        if @user == 0
        @board[@x][@y] = "x"
        @user += 1
        else
         @board[@x][@y] = "o"
        @user -= 1
        end
      end
      pp @board
      end
    end
    
    def winner?
      win = false
      @board = @board.flatten
      @wining_array.each do |arr|
         first = @board[arr[0]].to_s
         second = @board[arr[1]].to_s
         third = @board[arr[2]].to_s
         if (first == second) && (second == third) && (first == third)
           if first.equal?("x")
              puts "First Person who choose x char is Winner!"
           else
              puts "Second Person who choose o char is Winner!"
           end
            win = true
            break
          end
      end
     if  win == false
       puts "Ther is no winnner in this match!"
     end
    end
  end
  result = TicTacToe.new
  result.get_input
  result.winner?