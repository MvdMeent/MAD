(* ::Package:: *)

(* ::Title:: *)
(*Example Package*)


(*The above "title" cell should have the "initialization group" flag set.*)


BeginPackage["ExamplePackage`", {"Quaternions`"}]


(* ::Section:: *)
(*Preamble*)


ExampleFunction::usage="ExampleFunction[m] creates a table of useless values of length m+1.";


(* ::Section:: *)
(*Private*)


Begin["`Private`"];


PrivateFunction[0]=Quaternion[1,2,3,4];


PrivateFunction[n_]:= (PrivateFunction[n]=PrivateFunction[n-1]^2)


ExampleFunction[m_]:= Table[{i,FromQuaternion@PrivateFunction[i]},{i,0,m}]


(* ::Section:: *)
(*End*)


End[];
EndPackage[];
