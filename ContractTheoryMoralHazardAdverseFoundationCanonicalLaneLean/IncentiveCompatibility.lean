import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean

structure IncentiveScheme where
  agentType : Type u
  contract : agentType → ℝ → ℝ
  truthTelling : Prop
  efficiency : Prop
  budgetBalance : Prop

def incentiveClosed (I : IncentiveScheme) : Prop :=
  I.truthTelling ∧ I.efficiency ∧ I.budgetBalance

end ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean
end HautevilleHouse