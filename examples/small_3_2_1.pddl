(define (problem small_3_2_1)
  (:domain dungeon-world)
  (:objects
    node0 node1 node2 node3 node4 node5 node6 node7 node8 node9 - node
    class0 class1 - class
    obstacle0 obstacle1 - obstacle)

  (:init
    ;; Nodes
    (connected node0 node7)
    (connected node0 node6)
    (connected node0 node1)
    (connected node1 node4)
    (connected node1 node3)
    (connected node1 node0)
    (connected node2 node6)
    (connected node2 node4)
    (connected node2 node5)
    (connected node3 node1)
    (connected node3 node6)
    (connected node3 node7)
    (connected node4 node1)
    (connected node4 node9)
    (connected node4 node2)
    (connected node5 node8)
    (connected node5 node9)
    (connected node5 node2)
    (connected node6 node2)
    (connected node6 node3)
    (connected node6 node0)
    (connected node7 node0)
    (connected node7 node3)
    (connected node7 node8)
    (connected node8 node5)
    (connected node8 node7)
    (connected node8 node9)
    (connected node9 node4)
    (connected node9 node5)
    (connected node9 node8)

    ;; Classes
    (class-at class0 node4)
    (class-at class1 node4)

    ;; Obstacles
    (obstacle-at obstacle0 node3)
    (unpassable-at node3)
    (obstacle-at obstacle0 node5)
    (unpassable-at node5)
    (obstacle-at obstacle0 node1)
    (unpassable-at node1)
    (obstacle-at obstacle1 node4)
    (unpassable-at node4)
    (obstacle-at obstacle1 node8)
    (unpassable-at node8)
    (obstacle-at obstacle1 node7)
    (unpassable-at node7)

    ;; Define which class destroies which obstacles
    (class-clear-obstacle class0 obstacle0)
    (class-clear-obstacle class1 obstacle1)

    ;; Treasures
    (treasure-at node0)
    (treasure-at node2)
    (treasure-at node5)
    (treasure-at node8)
    (treasure-at node7)

    ;; Portals
    (portal-at node4)
    )

  (:goal
    (and
      (class-at class0 node4)
      (class-at class1 node4)
      (not (treasure-at node0))
      (not (treasure-at node2))
      (not (treasure-at node5))
      (not (treasure-at node8))
      (not (treasure-at node7))
      )))