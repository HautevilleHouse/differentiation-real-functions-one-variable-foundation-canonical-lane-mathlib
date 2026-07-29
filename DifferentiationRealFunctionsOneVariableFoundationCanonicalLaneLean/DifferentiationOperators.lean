import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean

structure DerivativeOperator where
  domain : Type u
  scalarField : Type v
  linearOperator : Prop
  leibnizRule : Prop
  chainRule : Prop
  linearOperatorClosed : linearOperator
  leibnizRuleClosed : leibnizRule
  chainRuleClosed : chainRule

structure DerivativeOperatorEvidence (D : DerivativeOperator) where
  linearOperatorClosed : D.linearOperatorClosed
  leibnizRuleClosed : D.leibnizRuleClosed
  chainRuleClosed : D.chainRuleClosed

def DerivativeOperatorClosed (D : DerivativeOperator) : Prop :=
  D.linearOperator ∧ D.leibnizRule ∧ D.chainRule

theorem derivative_operator_closed_from_evidence (D : DerivativeOperator)
    (E : DerivativeOperatorEvidence D) : DerivativeOperatorClosed D := by
  exact And.intro E.linearOperatorClosed
    (And.intro E.leibnizRuleClosed E.chainRuleClosed)

end DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean
end HautevilleHouse