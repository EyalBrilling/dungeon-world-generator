(define (problem large-dungeon)
  (:domain dungeon-world)
  (:objects
    node1 node2 node3 node4 - node
    class1 class2 - class
    obstacle1 obstacle2 obstacle3 obstacle4 - obstacle)
  
  (:init
    ;; Nodes
    (connected node1 node2)
    (connected node2 node1)
    (connected node2 node3)
    (connected node3 node2)
    (connected node2 node4)
    (connected node4 node2)
    
    ;; Classes
    (class-at class1 node1)
    (class-at class2 node1)
    
    ;; Obstacles
    (obstacle-at obstacle1 node3)
    (obstacle-at obstacle2 node4)
    (obstacle-at obstacle1 node2)
    
    ;; Treasure
    (treasure-at node2)
    (treasure-at node4)
    
    ;; Portal
    (portal-at node1))
    
  (:goal
    (and
      (class-at class1 node1)
      (class-at class2 node1)
      (not (treasure-at node2))
      (not (treasure-at node4)))))