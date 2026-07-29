import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : ContractTheoryAdmittedObject
  incentiveCompatibilitySatisfied : Prop
  remainderRecorded : Prop
  gateWitness : incentiveCompatibilitySatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ContractTheoryWitnessClosed A.object ∧ (A.incentiveCompatibilitySatisfied ∨ A.remainderRecorded)

end ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean
end HautevilleHouse
