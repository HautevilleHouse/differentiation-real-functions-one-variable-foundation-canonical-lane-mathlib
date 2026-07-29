import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean

structure RealDerivativeFoundation where
  carrier : Type u
  norm : carrier → ℝ
  limitExistence : Prop
  derivativeDefined : Prop
  linearApproximation : Prop
  limitExistenceTerm : limitExistence
  derivativeDefinedTerm : derivativeDefined
  linearApproximationTerm : linearApproximation

structure RealDerivativeFoundationEvidence (F : RealDerivativeFoundation) where
  limitExistenceClosed : F.limitExistence
  derivativeDefinedClosed : F.derivativeDefined
  linearApproximationClosed : F.linearApproximation

def RealDerivativeFoundationClosed (F : RealDerivativeFoundation) : Prop :=
  F.limitExistence ∧ F.derivativeDefined ∧ F.linearApproximation

theorem real_derivative_foundation_closed_from_evidence
    (F : RealDerivativeFoundation) (E : RealDerivativeFoundationEvidence F) :
    RealDerivativeFoundationClosed F := by
  exact And.intro E.limitExistenceClosed (And.intro E.derivativeDefinedClosed E.linearApproximationClosed)

end DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean
end HautevilleHouse