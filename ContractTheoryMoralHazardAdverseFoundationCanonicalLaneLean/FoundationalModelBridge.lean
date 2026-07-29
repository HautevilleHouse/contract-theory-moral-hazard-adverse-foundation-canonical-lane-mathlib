import canonicalLaneMathlib.AdmissibleClass
import ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean.MoralHazardModel
import ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean.AdverseSelectionModel
import ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean.ContractMechanismDesign
import ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean.IncentiveCompatibilityCore

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean

structure ContractTheoryAnalyticFoundation where
  moralHazard : MoralHazardModel
  moralHazardEvidence : MoralHazardModelEvidence moralHazard
  adverseSelection : AdverseSelectionModel
  adverseSelectionEvidence : AdverseSelectionModelEvidence adverseSelection
  mechanismDesign : ContractMechanismDesign
  mechanismDesignEvidence : ContractMechanismDesignEvidence mechanismDesign
  incentiveCore : IncentiveCompatibilityCore
  incentiveCoreEvidence : IncentiveCompatibilityCoreEvidence incentiveCore

def ContractTheoryAnalyticFoundationClosed (A : ContractTheoryAnalyticFoundation) : Prop :=
  MoralHazardModelClosed A.moralHazard ∧
  AdverseSelectionModelClosed A.adverseSelection ∧
  ContractMechanismDesignClosed A.mechanismDesign ∧
  IncentiveCompatibilityCoreClosed A.incentiveCore

theorem contract_theory_analytic_foundation_closed_from_evidence
    (A : ContractTheoryAnalyticFoundation) :
    ContractTheoryAnalyticFoundationClosed A :=
  And.intro (moral_hazard_model_closed_from_evidence A.moralHazard A.moralHazardEvidence)
    (And.intro (adverse_selection_model_closed_from_evidence A.adverseSelection A.adverseSelectionEvidence)
      (And.intro (contract_mechanism_design_closed_from_evidence A.mechanismDesign A.mechanismDesignEvidence)
        (incentive_compatibility_core_closed_from_evidence A.incentiveCore A.incentiveCoreEvidence)))

end ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean
end HautevilleHouse