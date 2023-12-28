let guess = 600851475143

let init n =
  let rec aux lst acc =
    if acc = n then 1::lst else init (1::lst) (acc+1)
  in init [] 0

let nb = init guess

(* obtenu avec du code C *)
let crible_eratocthene = 