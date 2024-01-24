(* 99 Problems Shared Code *)
let extract o =
  match o with
  None -> "None"
  | Some a -> a

(* End 99 Problems Shared Code *)

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

let _ = prerr_endline "Problem 2"
let rec last_two xs =
  match xs with
  [] -> None
  | _ :: [] -> None
  | x :: y :: [] -> Some (x, y)
  | _ :: xs -> last_two xs

let extract_two o =
  match o with
  None -> "None"
  | Some (a, b) -> a ^ " " ^ b

let _ = prerr_endline "Example 1 Problem 2"
let _ = last_two ["a" ; "b" ; "c" ; "d"] |> extract_two |> prerr_endline
let _ = last_two [] |> extract_two |> prerr_endline
let _ = prerr_endline ""


let _ = prerr_endline "Problem 3"
let rec at n xs =
  match xs with
  [] -> None
  | xs -> if n = List.length xs then Some(List.hd xs)
    else at n (List.tl xs)


let _ = at 3 ["a"; "b"; "c"; "d"; "e"] |> extract |> prerr_endline
let _ = at 3 ["a"] |> extract |> prerr_endline
let _ = prerr_endline ""

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