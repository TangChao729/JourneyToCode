;It's recommended to install the misc-pddl-generators plugin 
;and then use Network generator to create the graph
(define (problem p3-UpdsideDown)
  (:domain UpdsideDown)
  (:objects
    cell-1 cell-2 cell-3 cell-4 cell-5 cell-6 cell-7 cell-8 cell-9 cell-10 cell-11 cell-12 cell-13 - cells
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
    (key-at cell-5 k1) ;green key
    (key-at cell-9 k2) ;red key
    (key-at cell-12 k3) ;blue key

    ;Initial location of the matches
    (match-at cell-5 m1)
    (not (match-on))

    ;Initial location of Monsters
    (monster-at cell-11)

    ;Initial lcocation of open gates
    (gate-open-colour cell-2 red)
    (gate-open-colour cell-3 red)
    (gate-open-colour cell-4 green)
    (gate-open-colour cell-6 green)
    (gate-open-colour cell-7 red)
    (gate-open-colour cell-8 red)
    (gate-open-colour cell-10 red)
    (gate-open-colour cell-12 blue)
    
    ;Key uses
    (key-two-use k1) ; green key
    (key-infinite-uses k2) ; red key
    (key-one-use k3) ; blue key

    ;Key Colours
    (key-colour k1 green)
    (key-colour k2 red)
    (key-colour k3 blue)
    
    ;Graph Connectivity
    (path cell-1 cell-2)
    (path cell-1 cell-8)

    (path cell-2 cell-1)
    (path cell-2 cell-3)
    (path cell-2 cell-9)

    (path cell-3 cell-2)
    (path cell-3 cell-4)
    (path cell-3 cell-8)
    (path cell-3 cell-10)

    (path cell-4 cell-3)
    (path cell-4 cell-5)
    (path cell-4 cell-9)
    (path cell-4 cell-11)

    (path cell-5 cell-4)
    (path cell-5 cell-6)
    (path cell-5 cell-10)
    (path cell-5 cell-12)

    (path cell-6 cell-5)
    (path cell-6 cell-7)
    (path cell-6 cell-11)
    (path cell-6 cell-13)

    (path cell-7 cell-6)
    (path cell-7 cell-12)

    (path cell-8 cell-1)
    (path cell-8 cell-3)
    (path cell-8 cell-9)

    (path cell-9 cell-2)
    (path cell-9 cell-4)
    (path cell-9 cell-8)
    (path cell-9 cell-10)

    (path cell-10 cell-3)
    (path cell-10 cell-5)
    (path cell-10 cell-9)
    (path cell-10 cell-11)

    (path cell-11 cell-4)
    (path cell-11 cell-6)
    (path cell-11 cell-10)
    (path cell-11 cell-12)

    (path cell-12 cell-5)
    (path cell-12 cell-7)
    (path cell-12 cell-11)
    (path cell-12 cell-13)

    (path cell-13 cell-6)
    (path cell-13 cell-12)

    
  )
  (:goal (and   (at cell-13)
                ;Hero's Goal Location
                
                ;All gates are closed
                (not (gate-open-colour cell-2 red))
                (not (gate-open-colour cell-3 red))
                (not (gate-open-colour cell-4 green))
                (not (gate-open-colour cell-6 green))
                (not (gate-open-colour cell-7 red))
                (not (gate-open-colour cell-8 red))
                (not (gate-open-colour cell-10 red))
                (not (gate-open-colour cell-12 blue))
  ))
  
)
