import sys
import typing
from random import choice
# args: number of nodes,mean degree,number of classes(min 1,max 3),
# number of obstacles(min 0,max number of nodes),
# number of treasures(min 1,max number of nodes),number of portals(min 1,max number of nodes)

class Problem:
    def __init__(self):


        # Input variables
        self.num_nodes : int
        self.max_degree : int
        self.num_classes : int
        self.num_obstacles : int
        self.num_treasures : int
        self.num_portals : int

        # Problem information
        self.classes_starting_position : int
        self.connected_nodes : list[list[int]]
        self.obstacles_placements : list
        self.treasure_placements : list
        self.portal_placements : list

    def parse_arguments(self, args):
        if len(args) != 7:
            print("Invalid number of arguments!")
            return False

        try:
            self.num_nodes = int(args[1])
            self.max_degree = int(args[2])
            self.num_classes = int(args[3])
            self.num_obstacles = int(args[4])
            self.num_treasures = int(args[5])
            self.num_portals = int(args[6])
        except ValueError:
            print("Invalid argument type! Arguments must be integers.")
            return False

        if self.num_nodes <= 0:
            print("Number of nodes must be greater than zero.")
            return False

        if self.max_degree <= 0:
            print("Max degree must be greater than zero.")
            return False

        if self.num_classes < 1 or self.num_classes > 3:
            print("Number of classes must be between 1 and 3 (inclusive).")
            return False

        if self.num_obstacles < 0 or self.num_obstacles > self.num_nodes:
            print("Number of obstacles must be between 0 and the number of nodes (inclusive).")
            return False

        if self.num_treasures < 1 or self.num_treasures > self.num_nodes:
            print("Number of treasures must be between 1 and the number of nodes (inclusive).")
            return False

        if self.num_portals < 1 or self.num_portals > self.num_nodes:
            print("Number of portals must be between 1 and the number of nodes (inclusive).")
            return False

        return True

    def generate_problem(self):
        self.classes_starting_position = self.make_node_connectings(self.num_nodes,self.max_degree)


    def make_node_connectings(self,number_of_nodes : int,max_degree : int):
        connected_node_list : list[list[int]] = [[] for i in range(number_of_nodes)]
        # Generate edges not passing max_degree
        for i in range(max_degree):
            for node_to_connect in range(number_of_nodes):
                # In case graph is full,no choices can be made
                try:
                    randomized_node_to_connect_to = choice([i for i in range(0,number_of_nodes) if i not in [node_to_connect]+connected_node_list[node_to_connect]])
                except:
                    continue
                # Only add connection if degree of both nodes is less then max_degree
                if(len(connected_node_list[node_to_connect]) < max_degree and len(connected_node_list[randomized_node_to_connect_to]) < max_degree):
                    connected_node_list[node_to_connect].append(randomized_node_to_connect_to)
                    connected_node_list[randomized_node_to_connect_to].append(node_to_connect)
        # Make sure all nodes are connected.
        for node_index in range(number_of_nodes):
            if(len(connected_node_list[node_index]) == 0):
                randomized_node_to_connect_to = choice([i for i in range(0,number_of_nodes) if i not in [node_index]])
                connected_node_list[node_index].append(randomized_node_to_connect_to)
                connected_node_list[randomized_node_to_connect_to].append(node_index)
        
        return connected_node_list

if __name__ == '__main__':
    args = sys.argv
    problem = Problem()
    # Parse the arguments into the problem class
    if problem.parse_arguments(args):
        print(f"Parsed arguments: {problem.num_nodes}, {problem.max_degree}, {problem.num_classes}, {problem.num_obstacles}, {problem.num_treasures}, {problem.num_portals}")

    problem.generate_problem()
