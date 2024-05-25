graph = Hash.new([])
graph["you"] = ["alice","bob","claire"]
graph["alice"] = ["peggy"]
graph["bob"] = ["peggy", "anuj"]
graph["claire"] = ["jonny","thom"]
graph["peggy"] = []
graph["anuj"] = []
graph["jonny"] = []
graph["thom"] = []

def seller_person?(person) 
    return person[-1] == "m"
end
def breadth_first_search(graph, name)
    search_queue = []
    search_queue += graph[name]
    serched_items = []
    while search_queue.length > 0
        person = search_queue.shift
        unless serched_items.include?(person)
            if seller_person?(person)
                return "#{person} is a mango seller."
            else
                search_queue.concat(graph[person])
                serched_items.push(person)
            end
        end
    end
end
 pp breadth_first_search(graph, "you")
