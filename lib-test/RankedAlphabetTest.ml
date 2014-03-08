let nil0 = ("nil",0)
let cons2 = ("cons",2)
let zero0 = ("zero",0)
let succ1 = ("succ",1)

let ra =
  let module RA = RankedAlphabet in
  RA.add succ1 @@ RA.add zero0 @@ RA.add cons2 @@ RA.singleton nil0

let test_string_of_elt () =
    print_endline @@ RankedAlphabet.string_of_elt cons2

let test_string_of () =
    print_endline @@ RankedAlphabet.string_of ra

let test_filter_by_arity () =
    let filtered = RankedAlphabet.filter_by_arity 0 ra in
    print_endline @@ RankedAlphabet.string_of filtered

let _ =
    test_string_of_elt ();
    test_string_of ();
    test_filter_by_arity ()
