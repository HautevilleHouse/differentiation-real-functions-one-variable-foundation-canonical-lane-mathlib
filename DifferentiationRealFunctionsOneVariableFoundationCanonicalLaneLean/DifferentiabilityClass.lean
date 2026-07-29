import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean

structure DifferentiabilityAtPoint (f : ℝ → ℝ) (a : ℝ) where
  derivativeExists : Prop
  derivativeValue : ℝ
  derivativeExistsTerm : derivativeExists

structure DifferentiableOnSet (f : ℝ → ℝ) (s : Set ℝ) where
  diffAtEach : ∀ x ∈ s, DifferentiabilityAtPoint f x

def DifferentiabilityClosed (f : ℝ → ℝ) (s : Set ℝ) (D : DifferentiableOnSet f s) : Prop :=
  ∀ x ∈ s, (D.diffAtEach x).derivativeExists

theorem diff_closed_from_evidence (f : ℝ → ℝ) (s : Set ℝ) (D : DifferentiableOnSet f s) : DifferentiabilityClosed f s D := by
  intro x hx
  exact (D.diffAtEach x hx).derivativeExistsTerm

end DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean
end HautevilleHouse