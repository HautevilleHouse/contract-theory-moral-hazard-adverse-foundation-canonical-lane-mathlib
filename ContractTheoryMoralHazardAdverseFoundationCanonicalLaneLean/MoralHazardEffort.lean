import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean

structure EffortChoice where
  effortLevel : Type u
  cost : effortLevel → ℝ
  outputDistribution : effortLevel → ℝ → ℝ
  principalValue : ℝ → ℝ
  agentUtility : ℝ → ℝ → ℝ
  incentiveConstraint : (effortLevel → ℝ) → Prop
  participationConstraint : (effortLevel → ℝ) → Prop
  optimalEffort : effortLevel → Prop

def moralHazardClosed (E : EffortChoice) : Prop :=
  (∃ e, E.optimalEffort e) ∧ E.incentiveConstraint (λ e => 0) ∧ E.participationConstraint (λ e => 0)

end ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean
end HautevilleHouse