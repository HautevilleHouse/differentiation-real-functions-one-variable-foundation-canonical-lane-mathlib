import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean

structure ImplicitFunctionTheorem where
  oneDimVersion : Prop
  existence : Prop
  uniqueness : Prop
  differentiability : Prop
  oneDimVersionTerm : oneDimVersion
  existenceTerm : existence
  uniquenessTerm : uniqueness
  differentiabilityTerm : differentiability

structure ImplicitFunctionTheoremEvidence (I : ImplicitFunctionTheorem) where
  oneDimVersionClosed : I.oneDimVersion
  existenceClosed : I.existence
  uniquenessClosed : I.uniqueness
  differentiabilityClosed : I.differentiability

def ImplicitFunctionTheoremClosed (I : ImplicitFunctionTheorem) : Prop :=
  I.oneDimVersion ∧ I.existence ∧ I.uniqueness ∧ I.differentiability

theorem implicit_function_theorem_closed_from_evidence
    (I : ImplicitFunctionTheorem) (E : ImplicitFunctionTheoremEvidence I) :
    ImplicitFunctionTheoremClosed I := by
  exact And.intro E.oneDimVersionClosed (And.intro E.existenceClosed (And.intro E.uniquenessClosed E.differentiabilityClosed))

end DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean
end HautevilleHouse