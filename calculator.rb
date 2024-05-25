continue = "yes"
until continue == "no" do
    puts "Enter First Number"
    fNumber = gets.chomp.to_f
    puts "Enter Second Number"
    sNumber = gets.chomp.to_f
    puts "Enter Operator"
    opr = gets.chomp
    result = case opr
        when '+' then fNumber + sNumber
        when '-' then fNumber - sNumber
        when '*' then fNumber * sNumber
        when '/' then fNumber / sNumber
        else
            puts "You have to enter an operator!"
        end
    puts result
    puts "Do you want to continue?"
    continue = gets.chomp
end