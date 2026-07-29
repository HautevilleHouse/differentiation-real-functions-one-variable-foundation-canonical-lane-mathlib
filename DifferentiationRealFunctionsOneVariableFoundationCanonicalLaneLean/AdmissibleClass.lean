import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean

structure RealFunctionAdmittedObject where
  f : ℝ → ℝ
  differentiable : Prop
  derivative : ℝ → ℝ
  conclusion : differentiable

structure AdmissibleClass where
  object : RealFunctionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.differentiable ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean
end HautevilleHouse