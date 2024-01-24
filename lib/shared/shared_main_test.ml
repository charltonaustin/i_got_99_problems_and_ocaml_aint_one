open OUnit2
open Shared_main
let make_sum_test name expected_output input =
  name >:: (fun _ -> assert_equal expected_output (extract input))
let tests = "test suite for sum" >::: [
  make_sum_test "[0; 1]" "None" None;
]

let _ = run_test_tt_main tests