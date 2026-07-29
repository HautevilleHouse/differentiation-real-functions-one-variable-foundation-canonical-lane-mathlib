import DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean.LimitContinuity

/-!
# Differentiation Foundation Package
-/

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean

structure DifferentiationFoundationPackage where
  derivativeDefined : Prop
  differentiabilityImpliesContinuity : Prop
  chainRuleProven : Prop
  productRuleProven : Prop
  quotientRuleProven : Prop
  localLinearApproximation : Prop

structure DifferentiationFoundationEvidence (D : DifferentiationFoundationPackage) where
  derivativeDefinedClosed : D.derivativeDefined
  differentiabilityImpliesContinuityClosed : D.differentiabilityImpliesContinuity
  chainRuleProvenClosed : D.chainRuleProven
  productRuleProvenClosed : D.productRuleProven
  quotientRuleProvenClosed : D.quotientRuleProven
  localLinearApproximationClosed : D.localLinearApproximation

def DifferentiationFoundationClosed (D : DifferentiationFoundationPackage) : Prop :=
  D.derivativeDefined ∧ D.differentiabilityImpliesContinuity ∧
  D.chainRuleProven ∧ D.productRuleProven ∧ D.quotientRuleProven ∧ D.localLinearApproximation

theorem differentiation_foundation_closed_from_evidence
    (D : DifferentiationFoundationPackage) (E : DifferentiationFoundationEvidence D) :
    DifferentiationFoundationClosed D := by
  exact And.intro E.derivativeDefinedClosed
    (And.intro E.differentiabilityImpliesContinuityClosed
      (And.intro E.chainRuleProvenClosed
        (And.intro E.productRuleProvenClosed
          (And.intro E.quotientRuleProvenClosed E.localLinearApproximationClosed))))

end DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean
end HautevilleHouse