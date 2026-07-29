import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean

structure DifferentiationRules where
  sumRule : Prop
  productRule : Prop
  chainRule : Prop
  quotientRule : Prop
  sumRuleTerm : sumRule
  productRuleTerm : productRule
  chainRuleTerm : chainRule
  quotientRuleTerm : quotientRule

structure DifferentiationRulesEvidence (R : DifferentiationRules) where
  sumRuleClosed : R.sumRule
  productRuleClosed : R.productRule
  chainRuleClosed : R.chainRule
  quotientRuleClosed : R.quotientRule

def DifferentiationRulesClosed (R : DifferentiationRules) : Prop :=
  R.sumRule ∧ R.productRule ∧ R.chainRule ∧ R.quotientRule

theorem differentiation_rules_closed_from_evidence
    (R : DifferentiationRules) (E : DifferentiationRulesEvidence R) :
    DifferentiationRulesClosed R := by
  exact And.intro E.sumRuleClosed (And.intro E.productRuleClosed (And.intro E.chainRuleClosed E.quotientRuleClosed))

end DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean
end HautevilleHouse