(* Coq >= 8.3pl2: disable automatic introduction of hypotheses. *)
Global Unset Automatic Introduction.
(* Coq >= 8.5: allow sum constructors without explicit types in patterns. *)
Global Set Asymmetric Patterns.
Require Import zenon.
Require Import zenon_induct.
Require Import zenon_focal.
Require Export Bool.
Require Export ZArith.
Open Scope Z_scope.
Require Export Reals.
Require Export Ascii.
Require Export String.
Require Export List.
Require Import Wellfounded.
Require Export Recdef.
Require Export coq_builtins.
Require Import Relations.
Require Import Zwf.

(* Below: to prevent Function to apply heuristics that would
the expected aim in recursive functions termination proofs. *)

Set Function_raw_tcc.

Require basics.
Require Un_Etre_humain_S.
Require Un_Territoire_S.
Module Un_Francais_S.
  Definition est_un_francais (abst_T : Set) (s : abst_T) : basics.bool__t :=
    true.
  Definition habite_un_territoire_francais (_p_UTfr_T : Set)
    (_p_UTfr_est_un_territoire_francais : _p_UTfr_T -> basics.bool__t)
    (abst_T : Set)
    (abst_habite_un_territoire : abst_T -> _p_UTfr_T -> basics.bool__t)
    (fra : abst_T) (ter : _p_UTfr_T) : basics.bool__t :=
    (basics._amper__amper_ (abst_habite_un_territoire fra ter)
      (_p_UTfr_est_un_territoire_francais ter)).
  
End Un_Francais_S.

