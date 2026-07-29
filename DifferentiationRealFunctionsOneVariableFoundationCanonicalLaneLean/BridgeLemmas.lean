import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.differentiable

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean
end HautevilleHouse