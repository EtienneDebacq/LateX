(* test if nb can be evenly divided by all the numbers between divi and 1. *)
let div nb divi = 
  let rec aux nb divi = 
    if divi = 1 then true
    else if nb mod divi = 0 then aux nb (divi-1)
    else false
  in aux nb divi

(* return the smallest integer that can be evenly divided by each of the numbers from divi to 1. *)
let minima_divi divi = 
  let rec aux nb divi = 
    if div nb divi then nb 
    else aux (nb+1) divi
  in aux divi divi

let divi = 20

let answer = minima_divi divi