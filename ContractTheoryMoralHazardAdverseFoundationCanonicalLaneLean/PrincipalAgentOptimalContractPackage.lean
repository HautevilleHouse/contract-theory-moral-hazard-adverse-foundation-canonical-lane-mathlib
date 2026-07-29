import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean.ContractAdverseSelectionPackage
import HautevilleHouse.ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean.MoralHazardHiddenActionPackage

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean

structure PrincipalAgentOptimalContractPackage {A : ContractAdverseSelectionPackage} {M : MoralHazardHiddenActionPackage} where
  firstBestContract : A.agentTypeSpace → ℝ
  secondBestContract : A.agentTypeSpace → ℝ
  implementationShortfall : Prop
  rentExtractionEfficiency : Prop
  contractConvergenceUnderFullInformation : Prop

structure PrincipalAgentOptimalContractEvidence {A : ContractAdverseSelectionPackage} {M : MoralHazardHiddenActionPackage}
    (P : PrincipalAgentOptimalContractPackage A M) where
  implementationShortfallClosed : P.implementationShortfall
  rentExtractionEfficiencyClosed : P.rentExtractionEfficiency
  contractConvergenceUnderFullInformationClosed : P.contractConvergenceUnderFullInformation

def PrincipalAgentOptimalContractClosed {A : ContractAdverseSelectionPackage} {M : MoralHazardHiddenActionPackage}
    (P : PrincipalAgentOptimalContractPackage A M) : Prop :=
  P.implementationShortfall ∧ P.rentExtractionEfficiency ∧ P.contractConvergenceUnderFullInformation

theorem principal_agent_optimal_contract_closed_from_evidence
    {A : ContractAdverseSelectionPackage} {M : MoralHazardHiddenActionPackage}
    (P : PrincipalAgentOptimalContractPackage A M) (E : PrincipalAgentOptimalContractEvidence P) :
    PrincipalAgentOptimalContractClosed P := by
  exact And.intro E.implementationShortfallClosed
    (And.intro E.rentExtractionEfficiencyClosed E.contractConvergenceUnderFullInformationClosed)

end HautevilleHouse.ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean