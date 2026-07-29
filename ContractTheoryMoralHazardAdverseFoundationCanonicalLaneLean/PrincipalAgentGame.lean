import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean

structure PrincipalAgentGame where
  actionSpace : Type u
  stateSpace : Type v
  outputFunction : actionSpace → stateSpace → ℝ
  principalPayoff : ℝ → ℝ
  agentPayoff : ℝ → ℝ → ℝ
  contract : (stateSpace → ℝ) → Prop
  equilibrium : (stateSpace → ℝ) → Prop

def gameClosed (G : PrincipalAgentGame) : Prop :=
  G.equilibrium (λ s => 0) ∧ ∃ c : G.stateSpace → ℝ, G.contract c

end ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean
end HautevilleHouse