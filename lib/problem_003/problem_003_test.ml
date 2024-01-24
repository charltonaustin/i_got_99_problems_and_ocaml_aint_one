open OUnit2
open Problem_003
let make_sum_test name expected_output input_one input_two =
  name >:: (fun _ -> assert_equal expected_output (at input_one input_two))
let tests = "test suite for sum" >::: [
  make_sum_test "[0; 1]" (Some(1)) 1 [0; 1];
]

let _ = run_test_tt_main tests