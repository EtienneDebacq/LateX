let fibo n =

  let rec aux lst acc = 

      if acc = 0 || acc = 1 then lst
      else begin 
        match lst with 
        | h1::h2::t -> aux ((h1+h2)::lst) (acc-1)
      end
  
  in aux [2; 1] n

let f = fibo 31

let somme =
  let rec aux acc lst = match lst with
  | [] -> 0
  | h::[] -> if h mod 2 = 0 then acc+h else acc
  | h::t -> if h mod 2 = 0 then aux (acc+h) t else aux acc t
in aux 0 f