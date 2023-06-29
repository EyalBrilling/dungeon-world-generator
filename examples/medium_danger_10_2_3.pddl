(define (problem medium_danger_10_2_3)
  (:domain dungeon-world)
  (:objects
    node0 node1 node2 node3 node4 node5 node6 node7 node8 node9 node10 node11 node12 node13 node14 node15 node16 node17 node18 node19 node20 node21 node22 node23 node24 node25 node26 node27 node28 node29 node30 node31 node32 node33 node34 node35 node36 node37 node38 node39 node40 node41 node42 node43 node44 node45 node46 node47 node48 node49 - node
    class0 class1 - class
    obstacle0 obstacle1 - obstacle)

  (:init
    ;; Nodes
    (connected node0 node27)
    (connected node0 node9)
    (connected node0 node29)
    (connected node0 node6)
    (connected node0 node48)
    (connected node0 node31)
    (connected node0 node11)
    (connected node0 node43)
    (connected node0 node19)
    (connected node0 node22)
    (connected node1 node25)
    (connected node1 node39)
    (connected node1 node34)
    (connected node1 node5)
    (connected node1 node40)
    (connected node1 node19)
    (connected node1 node23)
    (connected node1 node28)
    (connected node1 node8)
    (connected node1 node24)
    (connected node2 node5)
    (connected node2 node10)
    (connected node2 node4)
    (connected node2 node39)
    (connected node2 node49)
    (connected node2 node46)
    (connected node2 node31)
    (connected node2 node21)
    (connected node3 node33)
    (connected node3 node11)
    (connected node3 node16)
    (connected node3 node27)
    (connected node3 node20)
    (connected node3 node46)
    (connected node3 node4)
    (connected node3 node7)
    (connected node3 node42)
    (connected node3 node10)
    (connected node4 node34)
    (connected node4 node2)
    (connected node4 node49)
    (connected node4 node3)
    (connected node4 node47)
    (connected node4 node29)
    (connected node4 node31)
    (connected node4 node17)
    (connected node4 node13)
    (connected node4 node33)
    (connected node5 node2)
    (connected node5 node36)
    (connected node5 node12)
    (connected node5 node38)
    (connected node5 node1)
    (connected node5 node42)
    (connected node5 node48)
    (connected node5 node43)
    (connected node5 node45)
    (connected node5 node39)
    (connected node6 node27)
    (connected node6 node14)
    (connected node6 node23)
    (connected node6 node33)
    (connected node6 node0)
    (connected node6 node17)
    (connected node6 node28)
    (connected node6 node37)
    (connected node6 node18)
    (connected node6 node19)
    (connected node7 node45)
    (connected node7 node26)
    (connected node7 node32)
    (connected node7 node8)
    (connected node7 node23)
    (connected node7 node46)
    (connected node7 node11)
    (connected node7 node12)
    (connected node7 node3)
    (connected node7 node16)
    (connected node8 node34)
    (connected node8 node40)
    (connected node8 node7)
    (connected node8 node30)
    (connected node8 node45)
    (connected node8 node16)
    (connected node8 node13)
    (connected node8 node24)
    (connected node8 node1)
    (connected node8 node48)
    (connected node9 node46)
    (connected node9 node10)
    (connected node9 node0)
    (connected node9 node49)
    (connected node9 node37)
    (connected node9 node12)
    (connected node9 node47)
    (connected node9 node11)
    (connected node9 node41)
    (connected node9 node30)
    (connected node10 node9)
    (connected node10 node37)
    (connected node10 node2)
    (connected node10 node11)
    (connected node10 node49)
    (connected node10 node29)
    (connected node10 node22)
    (connected node10 node14)
    (connected node10 node44)
    (connected node10 node3)
    (connected node11 node3)
    (connected node11 node10)
    (connected node11 node25)
    (connected node11 node7)
    (connected node11 node32)
    (connected node11 node24)
    (connected node11 node42)
    (connected node11 node0)
    (connected node11 node21)
    (connected node11 node9)
    (connected node12 node5)
    (connected node12 node25)
    (connected node12 node27)
    (connected node12 node32)
    (connected node12 node44)
    (connected node12 node7)
    (connected node12 node9)
    (connected node12 node18)
    (connected node12 node49)
    (connected node12 node23)
    (connected node13 node39)
    (connected node13 node41)
    (connected node13 node25)
    (connected node13 node43)
    (connected node13 node20)
    (connected node13 node30)
    (connected node13 node8)
    (connected node13 node22)
    (connected node13 node28)
    (connected node13 node4)
    (connected node14 node6)
    (connected node14 node28)
    (connected node14 node36)
    (connected node14 node49)
    (connected node14 node47)
    (connected node14 node19)
    (connected node14 node37)
    (connected node14 node10)
    (connected node14 node39)
    (connected node14 node17)
    (connected node15 node46)
    (connected node15 node18)
    (connected node15 node47)
    (connected node15 node43)
    (connected node15 node26)
    (connected node15 node31)
    (connected node15 node30)
    (connected node15 node40)
    (connected node15 node38)
    (connected node16 node3)
    (connected node16 node30)
    (connected node16 node17)
    (connected node16 node38)
    (connected node16 node47)
    (connected node16 node8)
    (connected node16 node7)
    (connected node16 node26)
    (connected node16 node39)
    (connected node16 node24)
    (connected node17 node44)
    (connected node17 node16)
    (connected node17 node45)
    (connected node17 node6)
    (connected node17 node34)
    (connected node17 node14)
    (connected node17 node19)
    (connected node17 node23)
    (connected node17 node4)
    (connected node17 node21)
    (connected node18 node46)
    (connected node18 node23)
    (connected node18 node15)
    (connected node18 node26)
    (connected node18 node21)
    (connected node18 node24)
    (connected node18 node25)
    (connected node18 node40)
    (connected node18 node6)
    (connected node18 node12)
    (connected node19 node30)
    (connected node19 node35)
    (connected node19 node14)
    (connected node19 node1)
    (connected node19 node39)
    (connected node19 node41)
    (connected node19 node17)
    (connected node19 node0)
    (connected node19 node6)
    (connected node19 node40)
    (connected node20 node41)
    (connected node20 node43)
    (connected node20 node3)
    (connected node20 node13)
    (connected node20 node42)
    (connected node20 node36)
    (connected node20 node33)
    (connected node20 node23)
    (connected node20 node47)
    (connected node20 node49)
    (connected node21 node39)
    (connected node21 node34)
    (connected node21 node18)
    (connected node21 node44)
    (connected node21 node11)
    (connected node21 node27)
    (connected node21 node17)
    (connected node21 node48)
    (connected node21 node31)
    (connected node21 node2)
    (connected node22 node37)
    (connected node22 node32)
    (connected node22 node34)
    (connected node22 node10)
    (connected node22 node49)
    (connected node22 node43)
    (connected node22 node13)
    (connected node22 node0)
    (connected node22 node26)
    (connected node22 node29)
    (connected node23 node18)
    (connected node23 node6)
    (connected node23 node7)
    (connected node23 node34)
    (connected node23 node41)
    (connected node23 node1)
    (connected node23 node17)
    (connected node23 node12)
    (connected node23 node20)
    (connected node23 node35)
    (connected node24 node38)
    (connected node24 node18)
    (connected node24 node37)
    (connected node24 node11)
    (connected node24 node8)
    (connected node24 node16)
    (connected node24 node1)
    (connected node24 node48)
    (connected node24 node31)
    (connected node24 node26)
    (connected node25 node1)
    (connected node25 node12)
    (connected node25 node11)
    (connected node25 node13)
    (connected node25 node36)
    (connected node25 node18)
    (connected node25 node41)
    (connected node25 node32)
    (connected node25 node39)
    (connected node25 node28)
    (connected node26 node7)
    (connected node26 node18)
    (connected node26 node43)
    (connected node26 node15)
    (connected node26 node31)
    (connected node26 node16)
    (connected node26 node22)
    (connected node26 node42)
    (connected node26 node24)
    (connected node27 node0)
    (connected node27 node6)
    (connected node27 node32)
    (connected node27 node3)
    (connected node27 node12)
    (connected node27 node35)
    (connected node27 node44)
    (connected node27 node29)
    (connected node27 node34)
    (connected node27 node21)
    (connected node28 node14)
    (connected node28 node35)
    (connected node28 node6)
    (connected node28 node1)
    (connected node28 node25)
    (connected node28 node42)
    (connected node28 node13)
    (connected node28 node38)
    (connected node29 node48)
    (connected node29 node44)
    (connected node29 node0)
    (connected node29 node10)
    (connected node29 node27)
    (connected node29 node33)
    (connected node29 node4)
    (connected node29 node22)
    (connected node29 node40)
    (connected node30 node19)
    (connected node30 node16)
    (connected node30 node49)
    (connected node30 node8)
    (connected node30 node13)
    (connected node30 node38)
    (connected node30 node15)
    (connected node30 node9)
    (connected node30 node36)
    (connected node30 node32)
    (connected node31 node45)
    (connected node31 node40)
    (connected node31 node26)
    (connected node31 node0)
    (connected node31 node15)
    (connected node31 node4)
    (connected node31 node21)
    (connected node31 node37)
    (connected node31 node2)
    (connected node31 node24)
    (connected node32 node27)
    (connected node32 node22)
    (connected node32 node7)
    (connected node32 node12)
    (connected node32 node48)
    (connected node32 node11)
    (connected node32 node25)
    (connected node32 node33)
    (connected node32 node40)
    (connected node32 node30)
    (connected node33 node3)
    (connected node33 node38)
    (connected node33 node6)
    (connected node33 node45)
    (connected node33 node29)
    (connected node33 node20)
    (connected node33 node32)
    (connected node33 node44)
    (connected node33 node4)
    (connected node34 node4)
    (connected node34 node8)
    (connected node34 node21)
    (connected node34 node1)
    (connected node34 node22)
    (connected node34 node23)
    (connected node34 node17)
    (connected node34 node27)
    (connected node34 node43)
    (connected node34 node45)
    (connected node35 node19)
    (connected node35 node27)
    (connected node35 node28)
    (connected node35 node46)
    (connected node35 node44)
    (connected node35 node45)
    (connected node35 node37)
    (connected node35 node36)
    (connected node35 node49)
    (connected node35 node23)
    (connected node36 node5)
    (connected node36 node14)
    (connected node36 node41)
    (connected node36 node42)
    (connected node36 node25)
    (connected node36 node20)
    (connected node36 node47)
    (connected node36 node35)
    (connected node36 node38)
    (connected node36 node30)
    (connected node37 node22)
    (connected node37 node10)
    (connected node37 node48)
    (connected node37 node24)
    (connected node37 node41)
    (connected node37 node9)
    (connected node37 node14)
    (connected node37 node6)
    (connected node37 node35)
    (connected node37 node31)
    (connected node38 node24)
    (connected node38 node33)
    (connected node38 node5)
    (connected node38 node16)
    (connected node38 node30)
    (connected node38 node43)
    (connected node38 node36)
    (connected node38 node15)
    (connected node38 node28)
    (connected node39 node13)
    (connected node39 node21)
    (connected node39 node1)
    (connected node39 node2)
    (connected node39 node19)
    (connected node39 node41)
    (connected node39 node14)
    (connected node39 node25)
    (connected node39 node16)
    (connected node39 node5)
    (connected node40 node8)
    (connected node40 node31)
    (connected node40 node1)
    (connected node40 node18)
    (connected node40 node41)
    (connected node40 node15)
    (connected node40 node19)
    (connected node40 node32)
    (connected node40 node48)
    (connected node40 node29)
    (connected node41 node20)
    (connected node41 node36)
    (connected node41 node13)
    (connected node41 node37)
    (connected node41 node23)
    (connected node41 node25)
    (connected node41 node39)
    (connected node41 node19)
    (connected node41 node40)
    (connected node41 node9)
    (connected node42 node36)
    (connected node42 node5)
    (connected node42 node20)
    (connected node42 node11)
    (connected node42 node3)
    (connected node42 node28)
    (connected node42 node26)
    (connected node43 node20)
    (connected node43 node26)
    (connected node43 node13)
    (connected node43 node15)
    (connected node43 node34)
    (connected node43 node44)
    (connected node43 node5)
    (connected node43 node22)
    (connected node43 node38)
    (connected node43 node0)
    (connected node44 node17)
    (connected node44 node29)
    (connected node44 node46)
    (connected node44 node12)
    (connected node44 node21)
    (connected node44 node27)
    (connected node44 node35)
    (connected node44 node43)
    (connected node44 node33)
    (connected node44 node10)
    (connected node45 node7)
    (connected node45 node31)
    (connected node45 node47)
    (connected node45 node17)
    (connected node45 node33)
    (connected node45 node8)
    (connected node45 node46)
    (connected node45 node34)
    (connected node45 node35)
    (connected node45 node5)
    (connected node46 node9)
    (connected node46 node15)
    (connected node46 node18)
    (connected node46 node44)
    (connected node46 node47)
    (connected node46 node35)
    (connected node46 node7)
    (connected node46 node3)
    (connected node46 node45)
    (connected node46 node2)
    (connected node47 node45)
    (connected node47 node46)
    (connected node47 node14)
    (connected node47 node15)
    (connected node47 node16)
    (connected node47 node48)
    (connected node47 node4)
    (connected node47 node36)
    (connected node47 node9)
    (connected node47 node20)
    (connected node48 node29)
    (connected node48 node37)
    (connected node48 node32)
    (connected node48 node5)
    (connected node48 node47)
    (connected node48 node0)
    (connected node48 node21)
    (connected node48 node8)
    (connected node48 node24)
    (connected node48 node40)
    (connected node49 node14)
    (connected node49 node9)
    (connected node49 node30)
    (connected node49 node10)
    (connected node49 node2)
    (connected node49 node4)
    (connected node49 node22)
    (connected node49 node12)
    (connected node49 node35)
    (connected node49 node20)

    ;; Classes
    (class-at class0 node11)
    (class-at class1 node11)

    ;; Obstacles
    (obstacle-at obstacle0 node26)
    (unpassable-at node26)
    (obstacle-at obstacle0 node29)
    (unpassable-at node29)
    (obstacle-at obstacle0 node16)
    (unpassable-at node16)
    (obstacle-at obstacle0 node24)
    (unpassable-at node24)
    (obstacle-at obstacle0 node40)
    (unpassable-at node40)
    (obstacle-at obstacle0 node8)
    (unpassable-at node8)
    (obstacle-at obstacle0 node25)
    (unpassable-at node25)
    (obstacle-at obstacle0 node37)
    (unpassable-at node37)
    (obstacle-at obstacle0 node7)
    (unpassable-at node7)
    (obstacle-at obstacle0 node42)
    (unpassable-at node42)
    (obstacle-at obstacle0 node32)
    (unpassable-at node32)
    (obstacle-at obstacle0 node18)
    (unpassable-at node18)
    (obstacle-at obstacle0 node11)
    (unpassable-at node11)
    (obstacle-at obstacle0 node39)
    (unpassable-at node39)
    (obstacle-at obstacle0 node0)
    (unpassable-at node0)
    (obstacle-at obstacle0 node30)
    (unpassable-at node30)
    (obstacle-at obstacle0 node2)
    (unpassable-at node2)
    (obstacle-at obstacle0 node34)
    (unpassable-at node34)
    (obstacle-at obstacle0 node33)
    (unpassable-at node33)
    (obstacle-at obstacle0 node10)
    (unpassable-at node10)
    (obstacle-at obstacle1 node0)
    (unpassable-at node0)
    (obstacle-at obstacle1 node33)
    (unpassable-at node33)
    (obstacle-at obstacle1 node25)
    (unpassable-at node25)
    (obstacle-at obstacle1 node17)
    (unpassable-at node17)
    (obstacle-at obstacle1 node3)
    (unpassable-at node3)
    (obstacle-at obstacle1 node27)
    (unpassable-at node27)
    (obstacle-at obstacle1 node11)
    (unpassable-at node11)
    (obstacle-at obstacle1 node22)
    (unpassable-at node22)
    (obstacle-at obstacle1 node41)
    (unpassable-at node41)
    (obstacle-at obstacle1 node31)
    (unpassable-at node31)
    (obstacle-at obstacle1 node48)
    (unpassable-at node48)
    (obstacle-at obstacle1 node30)
    (unpassable-at node30)
    (obstacle-at obstacle1 node49)
    (unpassable-at node49)
    (obstacle-at obstacle1 node36)
    (unpassable-at node36)
    (obstacle-at obstacle1 node40)
    (unpassable-at node40)
    (obstacle-at obstacle1 node32)
    (unpassable-at node32)
    (obstacle-at obstacle1 node43)
    (unpassable-at node43)
    (obstacle-at obstacle1 node1)
    (unpassable-at node1)
    (obstacle-at obstacle1 node37)
    (unpassable-at node37)
    (obstacle-at obstacle1 node47)
    (unpassable-at node47)

    ;; Define which class destroies which obstacles
    (class-clear-obstacle class0 obstacle0)
    (class-clear-obstacle class1 obstacle1)

    ;; Treasures
    (treasure-at node1)
    (treasure-at node46)
    (treasure-at node13)
    (treasure-at node16)
    (treasure-at node42)
    (treasure-at node34)
    (treasure-at node35)
    (treasure-at node8)
    (treasure-at node22)
    (treasure-at node15)

    ;; Portals
    (portal-at node42)
    (portal-at node11)
    (portal-at node12)
    )

  (:goal
    (and
      (class-at class0 node11)
      (class-at class1 node11)
      (not (treasure-at node1))
      (not (treasure-at node46))
      (not (treasure-at node13))
      (not (treasure-at node16))
      (not (treasure-at node42))
      (not (treasure-at node34))
      (not (treasure-at node35))
      (not (treasure-at node8))
      (not (treasure-at node22))
      (not (treasure-at node15))
      )))