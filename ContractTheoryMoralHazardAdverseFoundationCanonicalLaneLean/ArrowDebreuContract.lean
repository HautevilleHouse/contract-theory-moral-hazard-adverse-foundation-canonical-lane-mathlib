import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean

structure ArrowDebreuSecurity where
  stateSpace : Type u
  payoff : stateSpace → ℝ
  price : ℝ
  agentEndowment : stateSpace → ℝ
  consumptionPlan : (stateSpace → ℝ) → Prop
  feasibleSet : (stateSpace → ℝ) → Prop

def arrowDebreuClosed (A : ArrowDebreuSecurity) : Prop :=
  A.feasibleSet (λ s => 0) ∧ ∃ c : A.stateSpace → ℝ, A.consumptionPlan c

end ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean
end HautevilleHouse