(** An implementation of a ranked alphabet.

  A ranked alphabet is a set of symbols with arity.

  Assume we have the symbols [zero : 0] and [succ : 1]
  then [(zero : 0, succ : 1)] forms a ranked alphabet.

  @author Robert Jakob
*)

include Set.S with type elt = string * int

(** Filter ranked alphabet by arity. *)
val filter_by_arity : int -> t -> t

(** String representation of a single element.  *)
val string_of_elt : elt -> string

(** String representation of the entire alphabet. *)
val string_of : ?first:string -> ?sep:string -> ?last:string -> t -> string

(** The arity of a given element. *)
val arity_of_elt : elt -> int
