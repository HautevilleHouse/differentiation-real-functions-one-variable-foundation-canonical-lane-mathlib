import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean

structure TaylorExpansionPackage where
  point : Type u
  functionSpace : Type v
  polynomialExpansion : Prop
  remainderEstimate : Prop
  lagrangeRemainder : Prop
  cauchyRemainder : Prop
  polynomialExpansionClosed : polynomialExpansion
  remainderEstimateClosed : remainderEstimate
  lagrangeRemainderClosed : lagrangeRemainder
  cauchyRemainderClosed : cauchyRemainder

structure TaylorExpansionEvidence (T : TaylorExpansionPackage) where
  polynomialExpansionClosed : T.polynomialExpansionClosed
  remainderEstimateClosed : T.remainderEstimateClosed
  lagrangeRemainderClosed : T.lagrangeRemainderClosed
  cauchyRemainderClosed : T.cauchyRemainderClosed

def TaylorExpansionClosed (T : TaylorExpansionPackage) : Prop :=
  T.polynomialExpansion ∧ T.remainderEstimate ∧
  T.lagrangeRemainder ∧ T.cauchyRemainder

theorem taylor_expansion_closed_from_evidence (T : TaylorExpansionPackage)
    (E : TaylorExpansionEvidence T) : TaylorExpansionClosed T := by
  exact And.intro E.polynomialExpansionClosed
    (And.intro E.remainderEstimateClosed
      (And.intro E.lagrangeRemainderClosed E.cauchyRemainderClosed))

end DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean
end HautevilleHouse