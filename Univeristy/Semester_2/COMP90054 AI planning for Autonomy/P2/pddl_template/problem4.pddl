;It's recommended to install the misc-pddl-generators plugin 
;and then use Network generator to create the graph
(define (problem p4-UpdsideDown)
  (:domain UpdsideDown)
  (:objects
    cell-1 cell-2 cell-3 cell-4 cell-5 cell-6 cell-7 cell-8 cell-9 - cells
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
    (key-at cell-2 k1) ;red key
    (key-at cell-4 k2) ;green key
    (key-at cell-8 k3) ;blue key

    ;Initial location of the matches
    (match-at cell-9 m1)
    (not (match-on))

    ;Initial location of Monsters
    (monster-at cell-6)

    ;Initial lcocation of open gates
    (gate-open-colour cell-5 red)
    (gate-open-colour cell-7 green)
    (gate-open-colour cell-9 blue)
    
    ;Key uses
    (key-infinite-uses k1) ; red key
    (key-two-use k2) ; green key
    (key-one-use k3) ; blue key

    ;Key Colours
    (key-colour k1 red)
    (key-colour k2 green)
    (key-colour k3 blue)
    
    ;Graph Connectivity
    (path cell-1 cell-2)
    (path cell-1 cell-3)

    (path cell-2 cell-1)
    (path cell-2 cell-5)

    (path cell-3 cell-1)
    (path cell-3 cell-6)

    (path cell-4 cell-5)
    (path cell-4 cell-7)

    (path cell-5 cell-2)
    (path cell-5 cell-4)

    (path cell-6 cell-3)
    (path cell-6 cell-9)

    (path cell-7 cell-4)
    (path cell-7 cell-8)

    (path cell-8 cell-7)
    (path cell-8 cell-9)

    (path cell-9 cell-6)
    (path cell-9 cell-8)
    
    
  )
  (:goal (and   (at cell-3)
                ;Hero's Goal Location
                
                ;All gates are closed
                (not (gate-open-colour cell-5 red))
                (not (gate-open-colour cell-7 green))
                (not (gate-open-colour cell-9 blue))
            
  ))
  
)
