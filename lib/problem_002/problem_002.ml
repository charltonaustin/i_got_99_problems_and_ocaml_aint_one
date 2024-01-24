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