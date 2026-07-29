import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.incentiveCompatibilitySatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean
end HautevilleHouse
