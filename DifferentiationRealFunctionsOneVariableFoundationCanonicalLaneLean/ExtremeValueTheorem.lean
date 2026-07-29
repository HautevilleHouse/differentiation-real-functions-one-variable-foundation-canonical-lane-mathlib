import DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean.DifferentiationFoundation

/-!
# Extreme Value Theorem Package
-/

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean

structure ExtremeValueTheoremPackage (D : DifferentiationFoundationPackage) where
  continuousOnClosedBounded : Prop
  boundednessAchieved : Prop
  maximumAttained : Prop
  minimumAttained : Prop
  extremeValueProven : Prop

structure ExtremeValueTheoremEvidence {D : DifferentiationFoundationPackage}
    (E : ExtremeValueTheoremPackage D) where
  continuousOnClosedBoundedClosed : E.continuousOnClosedBounded
  boundednessAchievedClosed : E.boundednessAchieved
  maximumAttainedClosed : E.maximumAttained
  minimumAttainedClosed : E.minimumAttained
  extremeValueProvenClosed : E.extremeValueProven

def ExtremeValueTheoremClosed {D : DifferentiationFoundationPackage}
    (E : ExtremeValueTheoremPackage D) : Prop :=
  E.continuousOnClosedBounded ∧ E.boundednessAchieved ∧
  E.maximumAttained ∧ E.minimumAttained ∧ E.extremeValueProven

theorem extreme_value_theorem_closed_from_evidence
    {D : DifferentiationFoundationPackage} (E : ExtremeValueTheoremPackage D)
    (Ev : ExtremeValueTheoremEvidence E) : ExtremeValueTheoremClosed E := by
  exact And.intro Ev.continuousOnClosedBoundedClosed
    (And.intro Ev.boundednessAchievedClosed
      (And.intro Ev.maximumAttainedClosed
        (And.intro Ev.minimumAttainedClosed Ev.extremeValueProvenClosed)))

end DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean
end HautevilleHouse