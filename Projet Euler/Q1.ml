let mult3 = 
  let rec aux lst acc = 
    if acc = 1000 then lst
    else if acc mod 3 = 0 then aux (acc::lst) (acc+1)
        else aux lst (acc+1)
  in aux [] 0

let mult5 = 
  let rec aux lst acc = 
    if acc = 1000 then lst
    else if acc mod 5 = 0 then aux (acc::lst) (acc+1)
        else aux lst (acc+1)
  in aux [] 0

let mult15 = 
  let rec aux lst acc = 
    if acc = 1000 then lst
    else if acc mod 15 = 0 then aux (acc::lst) (acc+1)
        else aux lst (acc+1)
  in aux [] 0

let somme3 = 
  let rec aux lst acc = match lst with
  | [] -> 0
  | h::[] -> acc + h
  | h::t -> aux t (acc+h)
in aux mult3 0

let somme5 = 
  let rec aux lst acc = match lst with
  | [] -> 0
  | h::[] -> acc + h
  | h::t -> aux t (acc+h)
in aux mult5 0

let somme15 = 
  let rec aux lst acc = match lst with
  | [] -> 0
  | h::[] -> acc + h
  | h::t -> aux t (acc+h)
in aux mult15 0

let somme = somme3 + somme5 - somme15