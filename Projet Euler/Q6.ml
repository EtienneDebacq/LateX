let sum_square n = 
  let rec aux s acc = 
    if acc = 0 then s
    else aux (s + acc*acc) (acc-1)
  in aux 0 n

let square_sum n =
  let rec aux s acc = 
    if acc = 0 then s
    else aux (s + acc) (acc-1)
  in 
  let sum = aux 0 n
  in
  sum*sum
  
let value = 100

let answer = square_sum value - sum_square value