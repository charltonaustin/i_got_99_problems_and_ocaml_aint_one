open OUnit2
open Fib
let make_sum_test name expected_output input =
  name >:: (fun _ -> assert_equal expected_output (fib input) ~printer:string_of_int)
let tests = "test suite for sum" >::: [
  make_sum_test "empty" 0 0;
  make_sum_test "singleton" 1 1;
  make_sum_test "two_elements" 3 3;
]

let _ = run_test_tt_main tests