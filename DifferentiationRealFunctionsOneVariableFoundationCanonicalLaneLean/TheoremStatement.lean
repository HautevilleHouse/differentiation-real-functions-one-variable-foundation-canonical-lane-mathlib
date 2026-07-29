import Mathlib.Analysis.Calculus.Deriv
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean

structure DifferentiableFunctionObject where
  f : ℝ → ℝ
  a : ℝ
  differentiableAtA : Prop
  derivativeAtA : ℝ
  conclusion : differentiableAtA

def DifferentiableWitnessClosed (O : DifferentiableFunctionObject) : Prop :=
  O.differentiableAtA

end DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean
end HautevilleHouse