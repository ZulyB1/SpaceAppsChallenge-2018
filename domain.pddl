(define (domain earthquake)
  (:predicates (furniture ?f) (person ?p) (table ?m) (floor ?fl))
               
  (:action move
   :parameters (?move-away ?approach)
   :precondition (and (furniture ?move-away) (table ?approach) (person ?move-away))
   :effect (and (person ?approach) (not (person ?move-away))))
 
(:action to-bend-down 
   :parameters (?up ?toward-down)
   :precondition (and (table ?up) (floor ?toward-down) (person ?up))
   :effect (and (person ?toward-down) (not (person ?up))))
