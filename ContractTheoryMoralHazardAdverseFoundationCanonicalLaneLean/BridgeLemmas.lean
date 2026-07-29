import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ContractTheoryWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean
end HautevilleHouse
