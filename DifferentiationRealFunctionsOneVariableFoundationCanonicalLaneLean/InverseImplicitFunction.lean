import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean

structure InverseFunctionPackage where
  point : Type u
  functionSpace : Type v
  invertibilityNearPoint : Prop
  derivativeNonzero : Prop
  smoothInverse : Prop
  localExistence : Prop
  invertibilityNearPointClosed : invertibilityNearPoint
  derivativeNonzeroClosed : derivativeNonzero
  smoothInverseClosed : smoothInverse
  localExistenceClosed : localExistence

structure InverseFunctionEvidence (I : InverseFunctionPackage) where
  invertibilityNearPointClosed : I.invertibilityNearPointClosed
  derivativeNonzeroClosed : I.derivativeNonzeroClosed
  smoothInverseClosed : I.smoothInverseClosed
  localExistenceClosed : I.localExistenceClosed

def InverseFunctionClosed (I : InverseFunctionPackage) : Prop :=
  I.invertibilityNearPoint ∧ I.derivativeNonzero ∧ I.smoothInverse ∧ I.localExistence

theorem inverse_function_closed_from_evidence (I : InverseFunctionPackage)
    (E : InverseFunctionEvidence I) : InverseFunctionClosed I := by
  exact And.intro E.invertibilityNearPointClosed
    (And.intro E.derivativeNonzeroClosed
      (And.intro E.smoothInverseClosed E.localExistenceClosed))

end DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean
end HautevilleHouse