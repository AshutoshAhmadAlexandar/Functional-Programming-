open String;

datatype 'a tree = leaf of 'a |
		        node of 'a tree * 'a tree;

fun cat(leaf(s)) = s
  | cat(node(t1,t2)) = cat(t1) ^ " " ^ cat(t2);


val testcase1 = leaf("a");

val testcase2 = node(leaf("a"),leaf("b"));

val testcase3 = node(testcase2, testcase2);


(* Place the code for cat_tail here *)
fun cat_tail([], acc) = extract(acc,0,SOME (size(acc)-1))
  | cat_tail(leaf(s)::t, acc) = cat_tail(t,acc^s^" ")
  | cat_tail(node(t1,t2)::t, acc) = cat_tail(t1::(t2::t), acc);

(* Place the code for cat2 here *)
fun cat2(t) = cat_tail([t], "");

(* Then run the three test cases as shown below *)


cat2(testcase1);

cat2(testcase2);

cat2(testcase3);

