(define (domain knight)
  (:requirements :strips :disjunctive-preconditions :negative-preconditions)
  (:predicates
    (at ?p ?x ?y) 
    (occupied ?x ?y)
    (delta1 ?y1 ?y2)
    (delta2 ?y1 ?y2)
  )
  (:action move
    :parameters (?p ?x1 ?y1 ?x2 ?y2)
    :precondition (and 
        (at ?p ?x1 ?y1) 
        (not (occupied ?x2 ?y2))
        (or (and (delta2 ?x1 ?x2) (delta1 ?y1 ?y2))
            (and (delta2 ?x1 ?x2) (delta1 ?y2 ?y1))
            (and (delta2 ?x2 ?x1) (delta1 ?y1 ?y2))
            (and (delta2 ?x2 ?x1) (delta1 ?y2 ?y1))
            (and (delta2 ?y1 ?y2) (delta1 ?x1 ?x2))
            (and (delta2 ?y1 ?y2) (delta1 ?x2 ?x1))
            (and (delta2 ?y2 ?y1) (delta1 ?x1 ?x2))
            (and (delta2 ?x1 ?x2) (delta2 ?y1 ?y2))
         )
     ) 
     :effect (and 
        (not (at ?p ?x1 ?y1))
        (at ?p ?x2 ?y2)
        (occupied ?x2 ?y2)
        (not (occupied ?x1 ?y1))
    )
  )
)


