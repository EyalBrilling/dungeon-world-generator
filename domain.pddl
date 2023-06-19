(define (domain dungeon-world)
  (:requirements :strips :typing)
  
  ;; Define the types
  (:types 
    node - object
    class -object
    obstacle -object
    portal - object)

  ;; Define the predicates
  (:predicates
    (connected ?from - node ?to - node)
    (class-at ?class - class ?node - node)
    (obstacle-at ?obstacle - obstacle ?node - node)
    (treasure-at ?node - node)
    (portal-at ?node - node)
    (unpassable-at ?node - node)
    (treasure-carried ?class - class))


  ;; Define the actions
  (:action travel
    :parameters (?from - node ?to - node ?class - class)
    :precondition (and
                    (class-at ?class ?from)
                    (connected ?from ?to)
                    (not (unpassable-at ?from))
                    )
    :effect (and
              (not (at ?class ?from))
              (at ?class ?to)))

  (:action pick-up
    :parameters (?node - node ?class - class)
    :precondition (and
                    (class-at ?class ?node)
                    (treasure-at ?node)
                    (not (unpassable-at ?node)) ;; Can't pick treasure from a node with obstacle
                    (not (treasure-carried ?class)))
    :effect (and
              (not (treasure-at ?node))
              (treasure-carried ?class)))

  (:action drop
    :parameters (?node - node ?class - class)
    :precondition (and
                    (class-at ?class ?node)
                    (clear ?node)
                    (treasure-carried ?class)
                    (not (unpassable-at ?node)) ;; Can't drop treasure from a node with obstacle
                    (portal-at ?node)) ;; Treasure can only be dropped into portals
    :effect (and
              (not (treasure-carried ?class))))

  (:action remove-obstacle
    :parameters (?node - node ?obstacle - obstacle ?class - class)
    :precondition (and
                    (class-at ?class ?node)
                    (obstacle-at ?obstacle ?node)
                    (not (treasure-carried ?class)))
    :effect (and
              (not(obstacle-at ?obstacle ?node))
              (not(unpassable-at ?node))))
  )
