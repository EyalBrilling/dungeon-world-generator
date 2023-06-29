

class Problem_Info:
    def __init__(self, problem_path):
        self.problem_path = problem_path
        self.num_nodes : int
        self.num_classes_types : int
        self.num_obstacles_types : int
        self.classes_starting_position = []
        self.connected_nodes = []
        self.obstacles_placements = []
        self.treasure_placements = []
        self.portal_placements = []
        self.parse_problem()

    def __str__(self):
        return f"Problem:\n" \
           f"num_nodes={self.num_nodes}\n" \
           f"num_classes_types={self.num_classes_types}\n" \
           f"num_obstacles_types={self.num_obstacles_types}\n" \
           f"classes_starting_position={self.classes_starting_position}\n" \
           f"connected_nodes={self.connected_nodes}\n" \
           f"obstacles_placements={self.obstacles_placements}\n" \
           f"treasure_placements={self.treasure_placements}\n" \
           f"portal_placements={self.portal_placements}\n"

    def parse_problem(self):
        with open(self.problem_path, "r") as file:
            lines = file.readlines()
            self.extract_objects(lines)
            self.extract_initial_state(lines)

    def extract_objects(self, lines):
        objects_lines = lines[lines.index("  (:objects\n") +1 :lines.index("  (:init\n") - 1]
        objects_lines_splitted = [string.split("-")[0].strip().split() for string in objects_lines]
        self.num_nodes = len(objects_lines_splitted[0])
        self.num_classes_types = len(objects_lines_splitted[1])
        self.num_obstacles_types = len(objects_lines_splitted[2])

    def extract_initial_state(self, lines):
        init_lines = lines[lines.index("  (:init\n") + 2 :lines.index("  (:goal\n") - 1]
        for line in init_lines:
            if "(connected" in line:
                _, node1, node2 = line.split()
                node1_idx = int(node1[4:])
                node2_idx = int(node2.replace(")",'')[4:])
                self.connected_nodes.append([node1_idx, node2_idx])
            elif "(class-at" in line:
                _, class_name, node_name = line.split()
                node_idx = int(node_name.replace(")",'')[4:])
                self.classes_starting_position.append(node_idx)
            elif "(obstacle-at" in line:
                _, obstacle_name, node_name = line.split()
                obstacle_type_idx = int(obstacle_name[8:])
                node_idx = int(node_name.replace(")",'')[4:])
                self.obstacles_placements.append([obstacle_type_idx, node_idx])
            elif "(treasure-at" in line:
                _, node_name = line.split()
                node_idx = int(node_name.replace(")",'')[4:])
                self.treasure_placements.append(node_idx)
            elif "(portal-at" in line:
                _, node_name = line.split()
                node_idx = int(node_name.replace(")",'')[4:])
                self.portal_placements.append(node_idx)



def main():
     
     problem_info = Problem_Info("")
     print(problem_info)
    
if __name__ == '__main__':
    main()