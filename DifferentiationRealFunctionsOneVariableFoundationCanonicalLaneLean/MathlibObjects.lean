import DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure RealDifferentiationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure RealDifferentiationAdmittedObject where
  space : RealDifferentiationSpace
  oneDimensional : Prop
  differentiable : Prop
  derivativeModel : Type
  derivativeTopology : TopologicalSpace derivativeModel
  derivativeExists : Prop
  conclusion : derivativeExists

structure RealDifferentiationEndgameState where
  object : RealDifferentiationAdmittedObject

def RealDifferentiationWitnessClosed (O : RealDifferentiationAdmittedObject) : Prop :=
  O.derivativeExists

end DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean
end HautevilleHouse