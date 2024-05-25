@ph_book = Hash.new()
def add_contact(name, number)
    if  !@ph_book.include?(name) && !@ph_book.values.include?(number)
    @ph_book[name] = number
    end
    @ph_book

end
def get_number(name)
    if @ph_book.include?(name)
        pp @ph_book[name]
    end
end

pp add_contact("MgMg", "091234")
pp add_contact("MaMa", "091236")
pp add_contact("MaMg", "091236")
get_number("MgMg")