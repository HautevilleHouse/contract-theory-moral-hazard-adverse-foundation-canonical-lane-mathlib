import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean

structure MoralHazardHiddenActionPackage where
  actionSpace : Type u
  principalPayoff : actionSpace → ℝ
  agentCost : actionSpace → ℝ
  compensationScheme : actionSpace → ℝ
  incentiveCompatibilityConstraint : Prop
  limitedLiabilityConstraint : Prop
  effortObservabilityFailure : Prop

structure MoralHazardHiddenActionEvidence (M : MoralHazardHiddenActionPackage) where
  incentiveCompatibilityConstraintClosed : M.incentiveCompatibilityConstraint
  limitedLiabilityConstraintClosed : M.limitedLiabilityConstraint
  effortObservabilityFailureClosed : M.effortObservabilityFailure

def MoralHazardHiddenActionClosed (M : MoralHazardHiddenActionPackage) : Prop :=
  M.incentiveCompatibilityConstraint ∧ M.limitedLiabilityConstraint ∧ M.effortObservabilityFailure

theorem moral_hazard_hidden_action_closed_from_evidence
    (M : MoralHazardHiddenActionPackage) (E : MoralHazardHiddenActionEvidence M) :
    MoralHazardHiddenActionClosed M := by
  exact And.intro E.incentiveCompatibilityConstraintClosed
    (And.intro E.limitedLiabilityConstraintClosed E.effortObservabilityFailureClosed)

end HautevilleHouse.ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean