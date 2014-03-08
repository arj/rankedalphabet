module StringIntPair = struct
  type t = string * int

  let swap (a,b) = (b,a)

  let compare elt1 elt2 = compare (swap elt1) (swap elt2)
end

include Set.Make(StringIntPair)

let filter_by_arity a1 = filter (fun (_,a2) -> a1 = a2)

let string_of_elt (s,arity) =
    Printf.sprintf "%s^(%i)" s arity

let string_of ?(first="{") ?(sep=",") ?(last="}") ra =
    let strlst = List.map string_of_elt @@ elements ra in
    first ^ (String.concat sep strlst) ^ last

let arity_of_elt = snd
