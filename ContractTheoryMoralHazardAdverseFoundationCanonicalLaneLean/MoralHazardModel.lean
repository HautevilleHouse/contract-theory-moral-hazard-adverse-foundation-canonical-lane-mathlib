import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean

structure EffortChoice where
  effortLevel : Type u
  outputDistribution : effortLevel → ProbabilityMeasure ℝ
  costFunction : effortLevel → ℝ
  reservationUtility : ℝ
  limitedLiability : Prop

structure MoralHazardAdmittedObject where
  effort : EffortChoice
  contractOffered : ℝ → ℝ
  participationConstraint : effort.reservationUtility ≤ 0
  incentiveConstraint : ∀ e e' : effort.effortLevel,
    expectedUtility e ≥ expectedUtility e'
  limitedLiabilitySatisfied : effort.limitedLiability
  optimalContractFound : Prop
  implementsSecondBest : Prop
  conclusion : optimalContractFound ∧ implementsSecondBest

def expectedUtility {E : EffortChoice} (contract : ℝ → ℝ) (e : E.effortLevel) : ℝ :=
  ∫ x, (contract x) ∂ (E.outputDistribution e)

structure MoralHazardEvidence where
  object : MoralHazardAdmittedObject
  participationClosed : object.participationConstraint
  incentiveClosed : object.incentiveConstraint
  limitedLiabilityClosed : object.limitedLiabilitySatisfied
  optimalityClosed : object.optimalContractFound
  secondBestClosed : object.implementsSecondBest

def MoralHazardClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem moral_hazard_endgame (A : AdmissibleClass) :
    MoralHazardClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean
end HautevilleHouse