open Shared_main

let _ = prerr_endline "Problem 3"
let rec at n xs =
  match xs with
  [] -> None
  | xs -> if n = List.length xs then Some(List.hd xs)
    else at n (List.tl xs)


let _ = at 3 ["a"; "b"; "c"; "d"; "e"] |> extract |> prerr_endline
let _ = at 3 ["a"] |> extract |> prerr_endline
let _ = prerr_endline ""