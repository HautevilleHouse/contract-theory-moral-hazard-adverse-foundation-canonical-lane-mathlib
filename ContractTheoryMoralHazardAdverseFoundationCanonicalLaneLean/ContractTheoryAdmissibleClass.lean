import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean

structure ContractAdmittedObject where
  agentModel : Type
  actionSet : Type
  outputDistribution : actionSet -> Type
  utilityParameters : Prop
  conclusion : utilityParameters

structure AdmissibleClass where
  object : ContractAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ContractWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean
end HautevilleHouse