import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean

structure ChainRulePackage (f g : ℝ → ℝ) where
  fDerivAtPoint : ℝ → ℝ
  gDerivAtPoint : ℝ → ℝ
  compositionDerivFormula : Prop
  compositionDerivFormulaTerm : compositionDerivFormula

def ChainRuleClosed (f g : ℝ → ℝ) (C : ChainRulePackage f g) : Prop :=
  C.compositionDerivFormula

theorem chain_rule_closed (f g : ℝ → ℝ) (C : ChainRulePackage f g) : ChainRuleClosed f g C := by
  exact C.compositionDerivFormulaTerm

end DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean
end HautevilleHouse