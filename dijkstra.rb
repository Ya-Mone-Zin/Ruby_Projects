graph = Hash.new([])
graph["start"] = {}
graph["start"]["a"] = 6
graph["start"]["b"] = 2
graph["a"] = {}
graph["a"]["finish"] = 1
graph["b"] = {}
graph["b"]["a"] = 3
graph["b"]["finish"] = 5
graph["finish"] = {}
infinity = Float::INFINITY
costs = {}
costs["a"] = 6
costs["b"] = 2
costs["finish"] = infinity
parents = {}
parents["a"] = "start"
parents["b"] = "start"
parents["finish"] = nil
@checked = []
def dijkstr(graph,costs,parents)
    node = lowest_cost_node(costs)
    while node != nil
        cost = costs[node]
        neighbors = graph[node]
        for i in neighbors.keys
            new_cost = cost + neighbors[i]
            if costs[i] > new_cost
                costs[i] = new_cost
                parents[i] = node
            end     
        end
        @checked.append(node)
        node = lowest_cost_node(costs)
    end
    costs["finish"]
end
def lowest_cost_node(costs)
    lowest_cost = Float::INFINITY
    lowest_cost_node = nil
    costs.each do |key, value|
        if value < lowest_cost && @checked.include?(key) == false
            lowest_cost = value
            lowest_cost_node = key
        end
    end
    lowest_cost_node
end
pp dijkstr(graph,costs,parents)