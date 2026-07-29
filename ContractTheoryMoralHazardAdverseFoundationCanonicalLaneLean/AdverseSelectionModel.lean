import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean

structure ContractSpace where
  agentType : Type u
  outputDistribution : agentType → ProbabilityMeasure ℝ
  costFunction : agentType → ℝ → ℝ
  reservationUtility : ℝ
  participationConstraint : Prop
  incentiveConstraint : Prop
  monotonicityConstraint : Prop

structure ContractAdmissibleObject where
  space : ContractSpace
  contractOffered : ℝ → ℝ
  agentParticipation : space.participationConstraint
  agentIncentive : space.incentiveConstraint
  monotonicity : space.monotonicityConstraint
  optimalContractFound : Prop
  implementsFirstBest : Prop
  implementsSecondBest : Prop
  conclusion : optimalContractFound ∧ implementsSecondBest

structure AdverseSelectionEvidence where
  contractAdmissible : ContractAdmissibleObject
  participationSatisfied : contractAdmissible.agentParticipation
  incentiveSatisfied : contractAdmissible.agentIncentive
  monotonicitySatisfied : contractAdmissible.monotonicity
  optimalityClosed : contractAdmissible.optimalContractFound
  secondBestClosed : contractAdmissible.implementsSecondBest

def AdverseSelectionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem adverse_selection_endgame (A : AdmissibleClass) :
    AdverseSelectionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean
end HautevilleHouse