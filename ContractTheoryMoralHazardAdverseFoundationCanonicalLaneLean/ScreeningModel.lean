import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean

structure ScreeningContract where
  agentType : Type u
  menu : (agentType → ℝ) → Prop
  incentiveCompatible : (agentType → ℝ) → Prop
  individualRationality : (agentType → ℝ) → Prop
  optimalScreening : (agentType → ℝ) → Prop

def screeningClosed (S : ScreeningContract) : Prop :=
  ∀ t : S.agentType, S.incentiveCompatible (λ _ => 0) ∧ S.individualRationality (λ _ => 0)

end ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean
end HautevilleHouse