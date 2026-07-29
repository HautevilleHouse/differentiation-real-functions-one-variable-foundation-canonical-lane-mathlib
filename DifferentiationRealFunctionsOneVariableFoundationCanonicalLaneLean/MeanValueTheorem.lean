import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean

structure MeanValueTheorem where
  rolleTheorem : Prop
  lagrangeTheorem : Prop
  cauchyTheorem : Prop
  taylorTheorem : Prop
  rolleTheoremTerm : rolleTheorem
  lagrangeTheoremTerm : lagrangeTheorem
  cauchyTheoremTerm : cauchyTheorem
  taylorTheoremTerm : taylorTheorem

structure MeanValueTheoremEvidence (M : MeanValueTheorem) where
  rolleTheoremClosed : M.rolleTheorem
  lagrangeTheoremClosed : M.lagrangeTheorem
  cauchyTheoremClosed : M.cauchyTheorem
  taylorTheoremClosed : M.taylorTheorem

def MeanValueTheoremClosed (M : MeanValueTheorem) : Prop :=
  M.rolleTheorem ∧ M.lagrangeTheorem ∧ M.cauchyTheorem ∧ M.taylorTheorem

theorem mean_value_theorem_closed_from_evidence
    (M : MeanValueTheorem) (E : MeanValueTheoremEvidence M) :
    MeanValueTheoremClosed M := by
  exact And.intro E.rolleTheoremClosed (And.intro E.lagrangeTheoremClosed (And.intro E.cauchyTheoremClosed E.taylorTheoremClosed))

end DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean
end HautevilleHouse