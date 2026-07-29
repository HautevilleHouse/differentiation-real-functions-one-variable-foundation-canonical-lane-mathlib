import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Calculus.LHopital

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean

structure LHopitalRulePackage where
  functionF : Type u → Type v
  functionG : Type u → Type v
  limitPoint : Type u
  functionsDifferentiableAround : Prop
  limitExists : Prop
  lhopitalRule : Prop

structure LHopitalRuleEvidence (L : LHopitalRulePackage) where
  functionsDifferentiableAroundClosed : L.functionsDifferentiableAround
  limitExistsClosed : L.limitExists
  lhopitalRuleClosed : L.lhopitalRule

def LHopitalRuleClosed (L : LHopitalRulePackage) : Prop :=
  L.functionsDifferentiableAround ∧ L.limitExists ∧ L.lhopitalRule

theorem lhopital_rule_closed_from_evidence (L : LHopitalRulePackage) (E : LHopitalRuleEvidence L) :
    LHopitalRuleClosed L := by
  exact And.intro E.functionsDifferentiableAroundClosed (And.intro E.limitExistsClosed E.lhopitalRuleClosed)

end DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean
end HautevilleHouse
