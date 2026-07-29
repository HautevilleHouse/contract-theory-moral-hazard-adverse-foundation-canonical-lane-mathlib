import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean

structure FirstBestSecondBest where
  firstBestEffort : Type u
  secondBestEffort : Type v
  firstBestOutput : Prop
  secondBestOutput : Prop
  efficiencyGap : Prop
  moralHazardWedge : Prop
  riskSharingTradeoff : Prop

structure FirstBestSecondBestEvidence (F : FirstBestSecondBest) where
  firstBestOutputClosed : F.firstBestOutput
  secondBestOutputClosed : F.secondBestOutput
  efficiencyGapClosed : F.efficiencyGap
  moralHazardWedgeClosed : F.moralHazardWedge
  riskSharingTradeoffClosed : F.riskSharingTradeoff

def FirstBestSecondBestClosed (F : FirstBestSecondBest) : Prop :=
  F.firstBestOutput ∧ F.secondBestOutput ∧ F.efficiencyGap ∧
  F.moralHazardWedge ∧ F.riskSharingTradeoff

theorem first_best_second_best_closed_from_evidence (F : FirstBestSecondBest)
    (E : FirstBestSecondBestEvidence F) : FirstBestSecondBestClosed F := by
  exact And.intro E.firstBestOutputClosed
    (And.intro E.secondBestOutputClosed
      (And.intro E.efficiencyGapClosed
        (And.intro E.moralHazardWedgeClosed E.riskSharingTradeoffClosed)))

end ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean
end HautevilleHouse