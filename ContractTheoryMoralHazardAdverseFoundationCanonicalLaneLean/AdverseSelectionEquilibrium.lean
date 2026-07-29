import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean

structure AdverseSelectionEquilibrium where
  agentType : Type u
  contractOffered : Type v
  selectingMechanism : agentType -> contractOffered -> Prop
  competitiveEquilibrium : Prop
  separatingEquilibrium : Prop
  poolingEquilibrium : Prop
  efficientAllocation : Prop

structure AdverseSelectionEquilibriumEvidence (A : AdverseSelectionEquilibrium) where
  competitiveEquilibriumClosed : A.competitiveEquilibrium
  separatingEquilibriumClosed : A.separatingEquilibrium
  poolingEquilibriumClosed : A.poolingEquilibrium
  efficientAllocationClosed : A.efficientAllocation

def AdverseSelectionEquilibriumClosed (A : AdverseSelectionEquilibrium) : Prop :=
  A.competitiveEquilibrium ∧ A.separatingEquilibrium ∧
  A.poolingEquilibrium ∧ A.efficientAllocation

theorem adverse_selection_equilibrium_closed_from_evidence (A : AdverseSelectionEquilibrium)
    (E : AdverseSelectionEquilibriumEvidence A) : AdverseSelectionEquilibriumClosed A := by
  exact And.intro E.competitiveEquilibriumClosed
    (And.intro E.separatingEquilibriumClosed
      (And.intro E.poolingEquilibriumClosed E.efficientAllocationClosed))

end ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean
end HautevilleHouse