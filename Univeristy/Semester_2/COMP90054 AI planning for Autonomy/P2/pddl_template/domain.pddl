(define (domain UpdsideDown)

    (:requirements
        :typing
        :negative-preconditions
        :conditional-effects
    )

    (:types
        matches keys - items
        cells 
        colour
    )

    (:predicates
        
        ;Indicates the number of uses left in a key
        (key-infinite-uses ?k - keys)
        (key-two-use ?k - keys)
        (key-one-use ?k - keys)
        (key-used-up ?k - keys)

        ;Add other predicates needed to model this domain 
        
        ; Location & cells
        (at ?from - cells)
        (path ?from ?to - cells)
        (visited ?to - cells)

        ; Pick & drop keys
        (key-at ?loc - cells ?k - keys)
        (with-key ?k - keys)
        (key-colour ?k - keys ?c - colour)

        ; Coloured Gate to be locked
        (gate-open-colour ?loc - cells ?c - colour)

        ; Pick & drop matches
        (match-at ?loc - cells ?m - matches)
        (with-match ?m - matches)

        ; Indicates match used or not
        (match-on)

        ; Empty hand
        (empty-hand)

        ; Monster at
        (monster-at ?loc - cells)
    )

    ;Hero can move if the
    ;    - hero is at current location
    ;    - cells are connected, 
    ;    - there is no monster in current loc and destination, and 
    ;    - destination is not invigilated
    ;Effects move the hero, and the original cell becomes invigilated.
    (:action move
        :parameters (?from ?to - cells)
        :precondition (and  (at ?from)
                            (path ?from ?to)
                            (not (visited ?to))
                            (not (monster-at ?from))
                            (not (monster-at ?to))                    
        )
        :effect (and
                    (at ?to)
                    (visited ?from)
                    (not (at ?from))
                    ; Not super useful, but in logic
                    (when (match-on) (not (match-on)))
                )
    )
    
    ;When this action is executed, the hero leaves a location with a monster in it
    (:action move-out-of-monster
        :parameters (?from ?to - cells)
        :precondition (and  (at ?from)
                            (path ?from ?to)
                            (not (visited ?to))
                            (monster-at ?from)
                            (match-on)
                            
        )
        :effect (and    (at ?to)
                        (visited ?from)
                        (not (at ?from))
                        (not (match-on))
                            
                )
    )

    ;When this action is executed, the hero leaves a location without a monster and gets into a location with a monster
    (:action move-into-monster
        :parameters (?from ?to - cells ?m - matches)
        :precondition (and  (at ?from)
                            (path ?from ?to)
                            (not (visited ?to))
                            (not (monster-at ?from))
                            (monster-at ?to)
                            (with-match ?m)
        )
        :effect (and    (at ?to)
                        (visited ?from)
                        (not (at ?from))
                )
    )
    
    ;Hero's picks a key if he's in the same location
    (:action pick-key
        :parameters (?loc - cells ?k - keys)
        :precondition (and  (at ?loc)
                            (key-at ?loc ?k)
                            (empty-hand)
                      )
        :effect (and    (not (key-at ?loc ?k))
                        (with-key ?k)
                        (not (empty-hand))
                )
    )

    ;Hero's picks a match if he's in the same location
    (:action pick-match
        :parameters (?loc - cells ?m - matches)
        :precondition (and  (at ?loc)
                            (match-at ?loc ?m)
                            (empty-hand)
                      )
        :effect (and    (not (match-at ?loc ?m))
                        (with-match ?m)
                        (not (empty-hand))  
                )
    )
    
   ;Hero's drops his key. 
    (:action drop-key
        :parameters (?loc - cells ?k - keys)
        :precondition (and (at ?loc)
                           (with-key ?k) 
                           (not (empty-hand))
                      )
        :effect (and    (key-at ?loc ?k)
                        (not (with-key ?k))
                        (empty-hand)
                )
    )

    ;Hero's drops his match. 
    (:action drop-match
        :parameters (?loc - cells ?m - matches)
        :precondition (and (at ?loc)
                           (with-match ?m) 
                           (not (empty-hand))
                      )
        :effect (and    (match-at ?loc ?m)
                        (not (with-match ?m))
                        (empty-hand)
                            
                )
    )
    
    ;Hero's disarm the trap with his hand
    (:action close-gate
        :parameters (?from ?to - cells ?k - keys ?c - colour)
        :precondition (and  
                        (path ?from ?to) ; if path exist between two cells
                        (at ?from)
                        (gate-open-colour ?to ?c)
                        (with-key ?k)
                        (key-colour ?k ?c)
                        (not (key-used-up ?k))                          
                      )
        :effect (and    
                    (not (gate-open-colour ?to ?c))
                    ;When a key has two uses, then it becomes a single use
                    (when (key-two-use ?k) (key-one-use ?k))
                    ;When a key has a single use, it becomes used-up
                    (when (key-one-use ?k) (key-used-up ?k))       
                )
    )

    ;Hero strikes her match
    (:action strike-match
        :parameters (?m - matches)
        :precondition (and  (with-match ?m)
                            (not (match-on))
        )
        :effect (and    (match-on)
                           
        )
    )
    
)