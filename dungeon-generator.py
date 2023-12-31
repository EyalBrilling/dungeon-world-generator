import sys
import typing
import math
import os
from random import choice,sample

# args: number of nodes,mean degree,number of classes(min 1,max 3),
# number of obstacles(min 0,max number of nodes),
# number of treasures(min 1,max number of nodes),number of portals(min 1,max number of nodes)

class Problem:
    def __init__(self):


        # Input variables
        self.problem_path : str
        self.num_nodes : int
        self.max_degree : int
        self.num_classes : int
        self.num_obstacles : int
        self.num_treasures : int
        self.num_portals : int

        # Problem information
        self.classes_starting_position : list
        self.connected_nodes : list[list[int]]
        self.obstacles_placements : list[list[int]]
        self.treasure_placements : list
        self.portal_placements : list

    def parse_arguments(self, args):
        if len(args) != 8:
            print("Invalid number of arguments! Arguments are:\n 1) Number of nodes 2) Mean degree 3) Classes 4) Obstacles 5) Treasures 6) Portals 7) Question path")
            return False

        try:
            self.num_nodes = int(args[1])
            self.max_degree = int(args[2])
            self.num_classes = int(args[3])
            self.num_obstacles = int(args[4])
            self.num_treasures = int(args[5])
            self.num_portals = int(args[6])
        except ValueError:
            print("Invalid argument type! Problem arguments must be integers.")
            return False
        try:
            self.problem_path = str(args[7])
        except ValueError:
            print("Invalid argument type for problem path, Must be string")
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

    def generate_problem_information(self):
        self.connected_nodes = self.generate_node_connectings(self.num_nodes,self.max_degree)
        self.obstacles_placements = self.generate_obstacles(self.num_obstacles,self.num_classes) # number of obstacle types = number of classes
        self.treasure_placements = self.generate_treasures(self.num_treasures)
        self.portal_placements = self.generate_portals(self.num_portals)
        self.classes_starting_position = self.generate_starting_class_positions(self.portal_placements,self.num_classes) # start classes on one of the portals

    def generate_problem_pddl_file(self):
        pddl_file = open(self.problem_path,"w")
        self.write_define_section(pddl_file)
        pddl_file.write("\n")
        self.write_init_section(pddl_file)
        self.write_goal_section(pddl_file)

    def write_define_section(self,pddl_file):
        file_name = os.path.splitext(os.path.basename(self.problem_path))[0]
        pddl_file.write("(define (problem %s)\n" %(file_name))
        pddl_file.write("  (:domain dungeon-world)\n")
        pddl_file.write("  (:objects\n")
        # Make a list of numbered nodes,classes and obstacles. then join them with " " and put in string.
        pddl_file.write("    %s - node\n" %(" ".join(["node"+str(i) for i in range(self.num_nodes)])))
        pddl_file.write("    %s - class\n" %(" ".join(["class"+str(i) for i in range(self.num_classes)])))
        pddl_file.write("    %s - obstacle)\n" %(" ".join(["obstacle"+str(i) for i in range(self.num_classes)])))
    
    def write_init_section(self,pddl_file):
        pddl_file.write("  (:init\n")

        # Write nodes connections into file
        pddl_file.write("    ;; Nodes\n")
        for nodeIndex,nodeConnections in enumerate(self.connected_nodes):
            for connectedNodeIndex in nodeConnections:
                pddl_file.write("    (connected ")
                pddl_file.write("node%s node%s)\n" %(nodeIndex,connectedNodeIndex))

        pddl_file.write("\n")

        pddl_file.write("    ;; Classes\n")
        for classNumber,startingPosition in enumerate(self.classes_starting_position):
            pddl_file.write("    (class-at ")
            pddl_file.write("class%s node%s)\n" %(classNumber,startingPosition))

        pddl_file.write("\n")

        pddl_file.write("    ;; Obstacles\n")
        for obstacleType,obstaclePlacementList in enumerate(self.obstacles_placements):
            for obstacleIndex in obstaclePlacementList:
                pddl_file.write("    (obstacle-at obstacle%s node%s)\n" %(obstacleType,obstacleIndex))
                pddl_file.write("    (unpassable-at node%s)\n" %(obstacleIndex))

        pddl_file.write("\n")

        pddl_file.write("    ;; Define which class destroies which obstacles\n")
        for classIndex in range(self.num_classes):
            pddl_file.write("    (class-clear-obstacle class%s obstacle%s)\n" %(classIndex,classIndex))

        pddl_file.write("\n")

        pddl_file.write("    ;; Treasures\n")
        for treasurePlacement in self.treasure_placements:
            pddl_file.write("    (treasure-at node%s)\n" %(treasurePlacement))

        pddl_file.write("\n")

        pddl_file.write("    ;; Portals\n")
        for portalPlacement in self.portal_placements:
            pddl_file.write("    (portal-at node%s)\n" %(portalPlacement))

        pddl_file.write("    )\n")
        pddl_file.write("\n")

    def write_goal_section(self,pddl_file):
        pddl_file.write("  (:goal\n")
        pddl_file.write("    (and\n")
        for classNumber,startingPosition in enumerate(self.classes_starting_position):
            pddl_file.write("      (class-at ")
            pddl_file.write("class%s node%s)\n" %(classNumber,startingPosition))
        for treasurePlacement in self.treasure_placements:
            pddl_file.write("      (not (treasure-at node%s))\n" %(treasurePlacement))

        pddl_file.write("      )))")
    def generate_node_connectings(self,number_of_nodes : int,max_degree : int):
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
    
    def generate_obstacles(self,number_of_obstacles : int,number_of_obstacle_types : int):
        obstacle_nodes_list = [[] for i in range(number_of_obstacle_types)]
        for obstacle_type_index in range(number_of_obstacle_types):
            obstacle_nodes_list[obstacle_type_index] = sample([i for i in range(self.num_nodes)],math.ceil(number_of_obstacles/number_of_obstacle_types))

        return obstacle_nodes_list
    
    def generate_treasures(self,number_of_treasures : int):
        treasures_nodes_list = []
        treasures_nodes_list = sample([i for i in range(self.num_nodes)],number_of_treasures)
        return treasures_nodes_list
    
    def generate_portals(self,number_of_portals : int):
        portals_nodes_list = []
        portals_nodes_list = sample([i for i in range(self.num_nodes)],number_of_portals)
        return portals_nodes_list
    # In the current problem definition,all classes start at the same place
    def generate_starting_class_positions(self,start_options : list,number_of_classes : int):
        chosen_node = choice(start_options)
        class_starting_nodes_list = [chosen_node for class_type in range(number_of_classes)]
        return class_starting_nodes_list

def main():
    args = sys.argv
    problem = Problem()
    # Parse the arguments into the problem class
    if problem.parse_arguments(args):
        print(f"Parsed arguments: {problem.num_nodes}, {problem.max_degree}, {problem.num_classes}, {problem.num_obstacles}, {problem.num_treasures}, {problem.num_portals}, {problem.problem_path}")
    else:
        return
        
    problem.generate_problem_information()
    problem.generate_problem_pddl_file()

if __name__ == '__main__':
    main()
