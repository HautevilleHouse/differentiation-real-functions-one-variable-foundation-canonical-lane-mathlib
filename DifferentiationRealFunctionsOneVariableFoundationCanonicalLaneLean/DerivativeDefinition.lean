import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean

structure DerivativeAtPoint (f : ℝ → ℝ) (a : ℝ) where
  limitExists : Prop
  limitValue : ℝ
  limitExistsTerm : limitExists

def DerivativeDefined (f : ℝ → ℝ) (a : ℝ) : Prop :=
  DerivativeAtPoint.term (h : DerivativeAtPoint f a) => h.limitExists

structure DerivativeFunction (f : ℝ → ℝ) where
  domain : Set ℝ
  derivativeAtEachPoint : ∀ x ∈ domain, DerivativeAtPoint f x

def DerivativeClosed (D : DerivativeFunction f) : Prop :=
  D.domain = Set.univ ∧ ∀ x, DerivativeDefined f x

end DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean
end HautevilleHouse