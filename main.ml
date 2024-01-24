open Shared_main

let _ = prerr_endline "Problem 4"
let rec length_helper n xs =
  match xs with
  [] -> n
  | _ :: xs -> length_helper (n + 1) xs
let length xs = length_helper 0 xs

let _ = length ["a"; "b"; "c"] |> string_of_int |> prerr_endline
let _ = length [] |> string_of_int |> prerr_endline
let _ = prerr_endline ""

let _ = prerr_endline "Problem 5"
(* Problem 5 *)
let rec rev_helper reversed xs =
  match xs with
  [] -> reversed
  | x :: xs -> rev_helper (x :: reversed) xs

let rev xs = rev_helper [] xs

let _ = rev ["a"; "b"; "c"] |> fun xs -> List.fold_left (fun s1 s2 -> s1 ^ " " ^ s2 ^ ";" ) "[" xs |> fun s -> s ^ " ]" |> prerr_endline
let _ = prerr_endline ""
let _ = prerr_endline "Problem 6"

(* Problem 6 *)
let is_pallidrome xs = xs = rev xs

let _ = is_pallidrome ["x"; "a"; "m"; "a"; "x"] |> string_of_bool |> prerr_endline