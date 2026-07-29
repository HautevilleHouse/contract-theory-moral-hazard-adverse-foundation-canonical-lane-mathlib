import ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean.ContractTheoryAdmissibleClass

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean

structure MoralHazardModel where
  effortLevels : Type
  outputRealization : Type
  productionFunction : effortLevels -> outputRealization -> Prop
  agentUtility : outputRealization -> Prop
  principalUtility : outputRealization -> Prop
  incentiveCompatibility : Prop
  participationConstraint : Prop

structure MoralHazardEvidence (M : MoralHazardModel) where
  incentiveCompatibilityClosed : M.incentiveCompatibility
  participationConstraintClosed : M.participationConstraint

def MoralHazardClosed (M : MoralHazardModel) : Prop :=
  M.incentiveCompatibility ∧ M.participationConstraint

theorem moral_hazard_closed_from_evidence (M : MoralHazardModel)
    (E : MoralHazardEvidence M) : MoralHazardClosed M := by
  exact And.intro E.incentiveCompatibilityClosed E.participationConstraintClosed

end ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean
end HautevilleHouse