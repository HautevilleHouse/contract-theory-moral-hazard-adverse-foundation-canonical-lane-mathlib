import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean

structure ContractAdverseSelectionPackage where
  agentTypeSpace : Type u
  principalPrior : agentTypeSpace → ℝ
  agentUtility : agentTypeSpace → ℝ → ℝ
  principalUtility : agentTypeSpace → ℝ → ℝ
  incentiveCompatibleContract : agentTypeSpace → ℝ
  participationConstraintSatisfied : Prop
  incentiveCompatibilitySatisfied : Prop
  screeningOptimal : Prop

structure ContractAdverseSelectionEvidence (P : ContractAdverseSelectionPackage) where
  participationConstraintSatisfiedClosed : P.participationConstraintSatisfied
  incentiveCompatibilitySatisfiedClosed : P.incentiveCompatibilitySatisfied
  screeningOptimalClosed : P.screeningOptimal

def ContractAdverseSelectionClosed (P : ContractAdverseSelectionPackage) : Prop :=
  P.participationConstraintSatisfied ∧ P.incentiveCompatibilitySatisfied ∧ P.screeningOptimal

theorem contract_adverse_selection_closed_from_evidence
    (P : ContractAdverseSelectionPackage) (E : ContractAdverseSelectionEvidence P) :
    ContractAdverseSelectionClosed P := by
  exact And.intro E.participationConstraintSatisfiedClosed
    (And.intro E.incentiveCompatibilitySatisfiedClosed E.screeningOptimalClosed)

end HautevilleHouse.ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean