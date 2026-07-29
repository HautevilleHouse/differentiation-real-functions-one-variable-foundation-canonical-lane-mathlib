import Mathlib.Analysis.Calculus.Deriv
import Mathlib.Analysis.Calculus.MeanInequalities

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean

theorem mathlib_derivative_linearity_body :
    ∀ (f g : ℝ → ℝ) (a : ℝ), DifferentiableAt ℝ f a → DifferentiableAt ℝ g a →
    deriv (f + g) a = deriv f a + deriv g a := by
  intro f g a hf hg
  exact deriv_add hf hg

theorem mathlib_product_rule_body :
    ∀ (f g : ℝ → ℝ) (a : ℝ), DifferentiableAt ℝ f a → DifferentiableAt ℝ g a →
    deriv (f * g) a = deriv f a * g a + f a * deriv g a := by
  intro f g a hf hg
  exact deriv_mul hf hg

theorem mathlib_chain_rule_body :
    ∀ (f g : ℝ → ℝ) (a : ℝ), DifferentiableAt ℝ g a → DifferentiableAt ℝ f (g a) →
    deriv (f ∘ g) a = deriv f (g a) * deriv g a := by
  intro f g a hg hf
  exact deriv_comp hf hg

theorem mathlib_mean_value_theorem_body :
    ∀ (f : ℝ → ℝ) (a b : ℝ), a < b → DifferentiableOn ℝ f (Set.Icc a b) →
    ∃ x ∈ Set.Ioo a b, deriv f x = (f b - f a) / (b - a) := by
  intro f a b h lt hdiff
  exact exists_deriv_eq_slope f h lt hdiff

end DifferentiationRealFunctionsOneVariableFoundationCanonicalLaneLean
end HautevilleHouse