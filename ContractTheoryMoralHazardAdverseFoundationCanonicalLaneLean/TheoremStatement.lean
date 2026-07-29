import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean

structure ContractTheoryAdmittedObject where
  agentSpace : Type
  principalSpace : Type
  effortSpace : Type
  outcomeSpace : Type
  contract : agentSpace → outcomeSpace → ℝ
  utilityAgent : agentSpace → outcomeSpace → ℝ
  utilityPrincipal : outcomeSpace → ℝ
  incentiveCompatibility : Prop
  participationConstraint : Prop
  conclusion : incentiveCompatibility ∧ participationConstraint

def ContractTheoryWitnessClosed (O : ContractTheoryAdmittedObject) : Prop :=
  O.incentiveCompatibility ∧ O.participationConstraint

end ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean
end HautevilleHouse
