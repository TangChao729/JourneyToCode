;It's recommended to install the misc-pddl-generators plugin 
;and then use Network generator to create the graph
(define (problem p1-UpdsideDown)
  (:domain UpdsideDown)
  (:objects
    cell-1 cell-2 cell-3 cell-4 cell-5 cell-6 cell-7 cell-8 cell-9 cell-10 cell-11 - cells
    red green blue - colour
    m1 - matches
    k1 k2 k3 - keys

  )
  (:init
  
    ;Initial Hero Location
    (at cell-1)

    ;She starts with a free arm
    (empty-hand)    

    ;Initial location of the keys
    (key-at cell-2 k1)
    (key-at cell-8 k2)
    (key-at cell-10 k3)

    ;Initial location of the matches
    (match-at cell-4 m1)
    (not (match-on))

    ;Initial location of Monsters
    (monster-at cell-3)
    
    ;Initial lcocation of open gates
    (gate-open-colour cell-5 red)
    (gate-open-colour cell-9 green)
    (gate-open-colour cell-6 green)
    (gate-open-colour cell-7 blue)

    ;Key uses   
    (key-infinite-uses k1)
    (key-two-use k2)
    (key-one-use k3)

    ;Key Colours
    (key-colour k1 red)
    (key-colour k2 green)
    (key-colour k3 blue)

    ;Graph Connectivity
    (path cell-1 cell-2)
    (path cell-2 cell-1)

    (path cell-2 cell-3)
    (path cell-3 cell-2)

    (path cell-2 cell-5)
    (path cell-5 cell-2)

    (path cell-3 cell-4)
    (path cell-4 cell-3)

    (path cell-3 cell-6)
    (path cell-6 cell-3)

    (path cell-3 cell-11)
    (path cell-11 cell-3)

    (path cell-4 cell-7)
    (path cell-7 cell-4)

    (path cell-5 cell-6)
    (path cell-6 cell-5)

    (path cell-5 cell-8)
    (path cell-8 cell-5)
    
    (path cell-6 cell-7)
    (path cell-7 cell-6)

    (path cell-6 cell-9)
    (path cell-9 cell-6)

    (path cell-7 cell-10)
    (path cell-10 cell-7)

    (path cell-8 cell-9)
    (path cell-9 cell-8)

    (path cell-9 cell-10)
    (path cell-10 cell-9)
    
    
  )
  (:goal (and   (at cell-11)
                ;Hero's Goal Location

                ;All gates are closed

                (not (gate-open-colour cell-5 red))
                (not (gate-open-colour cell-9 green))
                (not (gate-open-colour cell-6 green))
                (not (gate-open-colour cell-7 blue))
  ))
  
)