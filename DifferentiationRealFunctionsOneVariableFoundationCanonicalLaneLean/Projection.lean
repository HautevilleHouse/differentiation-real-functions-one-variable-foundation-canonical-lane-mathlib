import DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def differentiationProjection : Projection RealDifferentiationEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem differentiation_projection_idempotent (x : RealDifferentiationEndgameState) :
    differentiationProjection.toFun (differentiationProjection.toFun x) = differentiationProjection.toFun x := by
  exact differentiationProjection.idempotent x

end DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean
end HautevilleHouse