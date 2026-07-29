import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean

structure MoralHazardAdverseSelection where
  agentTypeSpace : Type u
  actionSpace : Type v
  stateSpace : Type w
  utilityFunction : agentTypeSpace -> actionSpace -> stateSpace -> Prop
  contractMenu : Type x
  revelationPrinciple : Prop
  screeningMechanism : Prop
  signalingMechanism : Prop

structure MoralHazardAdverseSelectionEvidence (M : MoralHazardAdverseSelection) where
  revelationPrincipleClosed : M.revelationPrinciple
  screeningMechanismClosed : M.screeningMechanism
  signalingMechanismClosed : M.signalingMechanism

def MoralHazardAdverseSelectionClosed (M : MoralHazardAdverseSelection) : Prop :=
  M.revelationPrinciple ∧ M.screeningMechanism ∧ M.signalingMechanism

theorem moral_hazard_adverse_selection_closed_from_evidence (M : MoralHazardAdverseSelection)
    (E : MoralHazardAdverseSelectionEvidence M) : MoralHazardAdverseSelectionClosed M := by
  exact And.intro E.revelationPrincipleClosed
    (And.intro E.screeningMechanismClosed E.signalingMechanismClosed)

end ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean
end HautevilleHouse