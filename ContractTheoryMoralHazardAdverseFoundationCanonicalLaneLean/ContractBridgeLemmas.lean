import ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean.ContractTheoryAdmissibleClass

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ContractWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean
end HautevilleHouse