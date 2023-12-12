;It's recommended to install the misc-pddl-generators plugin 
;and then use Network generator to create the graph
(define (problem p2-UpdsideDown)
  (:domain UpdsideDown)
  (:objects
    cell-1 cell-2 cell- cell-3 cell-4 cell-5 cell-6 cell-7 cell-8 cell-9 cell-10 cell-11 cell-12 cell-13 cell-14 cell-15 - cells
    red green blue - colour
    m1 m2 - matches
    k1 k2 - keys

  )
  (:init
  
    ;Initial Hero Location
    (at cell-1)

    ;She starts with a free arm
    (empty-hand)

    ;Initial location of the keys
    (key-at cell-1 k1) ;red key
    (key-at cell-11 k2) ;green key

    ;Initial location of the matches
    (match-at cell-6 m1)
    (match-at cell-13 m2)
    (not (match-on))

    ;Initial location of Monsters
    (monster-at cell-14)

    ;Initial lcocation of open gates
    (gate-open-colour cell-2 red)
    (gate-open-colour cell-3 red)
    (gate-open-colour cell-4 red)
    (gate-open-colour cell-5 red)
    (gate-open-colour cell-7 red)
    (gate-open-colour cell-8 red)
    (gate-open-colour cell-9 red)
    (gate-open-colour cell-10 red)
    (gate-open-colour cell-12 green)

    ;Key uses
    (key-infinite-uses k1) ; red key
    (key-two-use k2) ; green key

    ;Key Colours
    (key-colour k1 red)
    (key-colour k2 green)
    
    ;Graph Connectivity

    (path cell-1 cell-3)

    (path cell-2 cell-3)
    (path cell-2 cell-5)
    (path cell-2 cell-6)

    (path cell-3 cell-1)
    (path cell-3 cell-2)
    (path cell-3 cell-4)
    (path cell-3 cell-6)

    (path cell-4 cell-3)
    (path cell-4 cell-6)
    (path cell-4 cell-7)

    (path cell-5 cell-2)
    (path cell-5 cell-6)
    (path cell-5 cell-8)

    (path cell-6 cell-2)
    (path cell-6 cell-3)
    (path cell-6 cell-4)
    (path cell-6 cell-5)
    (path cell-6 cell-7)
    (path cell-6 cell-8)
    (path cell-6 cell-9)
    (path cell-6 cell-10)

    (path cell-7 cell-4)
    (path cell-7 cell-6)
    (path cell-7 cell-10)

    (path cell-8 cell-5)
    (path cell-8 cell-6)
    (path cell-8 cell-9)

    (path cell-9 cell-6)
    (path cell-9 cell-8)
    (path cell-9 cell-10)
    (path cell-9 cell-11)

    (path cell-10 cell-6)
    (path cell-10 cell-7)
    (path cell-10 cell-9)

    (path cell-11 cell-9)
    (path cell-11 cell-12)

    (path cell-12 cell-11)
    (path cell-12 cell-13)

    (path cell-13 cell-12)
    (path cell-13 cell-14)

    (path cell-14 cell-13)
    (path cell-14 cell-15)

    (path cell-15 cell-14)
    
  )
  (:goal (and   (at cell-15)
                ;Hero's Goal Location
                
                ;All gates are closed
                (not (gate-open-colour cell-2 red))
                (not (gate-open-colour cell-3 red))
                (not (gate-open-colour cell-4 red))
                (not (gate-open-colour cell-5 red))
                (not (gate-open-colour cell-7 red))
                (not (gate-open-colour cell-8 red))
                (not (gate-open-colour cell-9 red))
                (not (gate-open-colour cell-10 red))
                (not (gate-open-colour cell-12 green))
  ))
  
)
