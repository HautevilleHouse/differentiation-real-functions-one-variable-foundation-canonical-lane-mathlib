import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Calculus.Deriv

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean

structure DerivativePropertiesPackage where
  function : Type u → Type v
  derivativeExists : Prop
  derivativeLinear : Prop
  derivativeProductRule : Prop
  derivativeChainRule : Prop

structure DerivativePropertiesEvidence (D : DerivativePropertiesPackage) where
  derivativeExistsClosed : D.derivativeExists
  derivativeLinearClosed : D.derivativeLinear
  derivativeProductRuleClosed : D.derivativeProductRule
  derivativeChainRuleClosed : D.derivativeChainRule

def DerivativePropertiesClosed (D : DerivativePropertiesPackage) : Prop :=
  D.derivativeExists ∧ D.derivativeLinear ∧ D.derivativeProductRule ∧ D.derivativeChainRule

theorem derivative_properties_closed_from_evidence (D : DerivativePropertiesPackage) (E : DerivativePropertiesEvidence D) :
    DerivativePropertiesClosed D := by
  exact And.intro E.derivativeExistsClosed (And.intro E.derivativeLinearClosed (And.intro E.derivativeProductRuleClosed E.derivativeChainRuleClosed))

end DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean
end HautevilleHouse
