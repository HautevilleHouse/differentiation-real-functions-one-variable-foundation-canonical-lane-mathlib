import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean

structure DifferentiabilityContinuityPackage where
  domain : Type u
  functionSpace : Type v
  differentiableImpliesContinuous : Prop
  continuousNotImpliesDifferentiable : Prop
  lipschitzImpliesAbsolutelyContinuous : Prop
  differentiableImpliesContinuousClosed : differentiableImpliesContinuous
  continuousNotImpliesDifferentiableClosed : continuousNotImpliesDifferentiable
  lipschitzImpliesAbsolutelyContinuousClosed : lipschitzImpliesAbsolutelyContinuous

structure DifferentiabilityContinuityEvidence (D : DifferentiabilityContinuityPackage) where
  differentiableImpliesContinuousClosed : D.differentiableImpliesContinuousClosed
  continuousNotImpliesDifferentiableClosed : D.continuousNotImpliesDifferentiableClosed
  lipschitzImpliesAbsolutelyContinuousClosed : D.lipschitzImpliesAbsolutelyContinuousClosed

def DifferentiabilityContinuityClosed (D : DifferentiabilityContinuityPackage) : Prop :=
  D.differentiableImpliesContinuous ∧ D.continuousNotImpliesDifferentiable ∧
  D.lipschitzImpliesAbsolutelyContinuous

theorem differentiability_continuity_closed_from_evidence
    (D : DifferentiabilityContinuityPackage)
    (E : DifferentiabilityContinuityEvidence D) : DifferentiabilityContinuityClosed D := by
  exact And.intro E.differentiableImpliesContinuousClosed
    (And.intro E.continuousNotImpliesDifferentiableClosed
      E.lipschitzImpliesAbsolutelyContinuousClosed)

end DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean
end HautevilleHouse