open Shared_main
let _ = prerr_endline "Problem 1"
let rec last xs = 
  match xs with 
  [] -> None
  | x :: [] -> Some x
  | _ :: xs -> last xs

let _ = prerr_endline "Example 1 Problem 1"
let _ = prerr_endline "last ['a' ; 'b' ; 'c' ; 'd']"
let _ = last ["a" ; "b" ; "c" ; "d"] |> extract |> prerr_endline
let _ = prerr_endline "Example 2 Problem 1"
let _ = prerr_endline "last []"
let _ = last [] |> extract |> prerr_endline
let _ = prerr_endline ""