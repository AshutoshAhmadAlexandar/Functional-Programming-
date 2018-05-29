(* Define datatype 'a mixed here *)
datatype 'a mixed = base of 'a | 
			nest of 'a mixed list

val testcase1 = [];

val testcase2 = [base("apple")];

val testcase3 = [base(5.05), nest([base(4.0)]), base(3.1415)]

val testcase4 = [base(1), nest([base(2), nest([base(3), 
			base(4)])]), base(5), nest([base(6)])];


fun main(l) =
	let fun flatten([]) = []
	  | flatten(nest(t1)::t2) = flatten(t1)
	  | flatten(base(s)::t) = s::flatten(t)
	(* define flatten here *)
	  
	in
	    flatten(l) 
	end;

(* Run the test cases below *)

main(testcase1);

main(testcase2);

main(testcase3);

main(testcase4);
