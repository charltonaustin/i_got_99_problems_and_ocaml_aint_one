let _ = prerr_endline "Fib"
let rec fib n =
  if n < 1 then 0 else
  match n with
  | 1 -> 1
  | 2 -> 2
  | n -> fib (n-1) + fib (n-2)

let _ = prerr_endline "Example fib 10"
let _ = fib 10 |> string_of_int |> prerr_endline
let _ = prerr_endline ""
let _ = prerr_endline "Fib fast"
let rec fib_helper n pp p =
  if n = 1 then (p + pp)
  else fib_helper (n - 1) p (pp + p)

let fib_fast n = fib_helper n 0 1

let _ = prerr_endline "Example fib_fast 10"
let _ = fib_fast 10 |> string_of_int |> prerr_endline
let _ = prerr_endline ""