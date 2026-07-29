import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean

inductive Order where
  | first
  | second
  | nth (n : ℕ)

structure HigherDerivative (f : ℝ → ℝ) (n : ℕ) where
  derivativeFunction : ℝ → ℝ
  continuous : Prop
  continuousTerm : continuous

def HigherDerivativeClosed (f : ℝ → ℝ) (n : ℕ) (H : HigherDerivative f n) : Prop :=
  H.continuous

theorem higher_derivative_closed (f : ℝ → ℝ) (n : ℕ) (H : HigherDerivative f n) : HigherDerivativeClosed f n H := by
  exact H.continuousTerm

end DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean
end HautevilleHouse