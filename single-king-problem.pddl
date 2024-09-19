(define (problem single-king) 
    (:domain single-king)
    (:objects 
        king 
        x1 x2 x3 x4
        y1 y2 y3 y4
    )
    (:init
        (at king x1 y1)
        (adjacent x1 x2)
        (adjacent x2 x3)
        (adjacent x3 x4)
        (adjacent x4 x3)
        (adjacent x3 x2)
        (adjacent x2 x1)
        (adjacent y1 y2)
        (adjacent y2 y3)
        (adjacent y3 y4)
        (adjacent y4 y3)
        (adjacent y3 y2)
        (adjacent y2 y1)
    )
    (:goal (at king x4 y4))
)

