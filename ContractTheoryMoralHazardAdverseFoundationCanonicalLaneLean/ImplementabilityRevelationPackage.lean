import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean

structure ImplementabilityRevelationPackage where
  typeSpace : Type u
  allocationRule : typeSpace → ℝ
  transferRule : typeSpace → ℝ
  directMechanism : Prop
  incentiveCompatibilityDirectRevelation : Prop
  revenueEquivalence : Prop
  bayesianNashImplementation : Prop

structure ImplementabilityRevelationEvidence (I : ImplementabilityRevelationPackage) where
  directMechanismClosed : I.directMechanism
  incentiveCompatibilityDirectRevelationClosed : I.incentiveCompatibilityDirectRevelation
  revenueEquivalenceClosed : I.revenueEquivalence
  bayesianNashImplementationClosed : I.bayesianNashImplementation

def ImplementabilityRevelationClosed (I : ImplementabilityRevelationPackage) : Prop :=
  I.directMechanism ∧ I.incentiveCompatibilityDirectRevelation ∧
  I.revenueEquivalence ∧ I.bayesianNashImplementation

theorem implementability_revelation_closed_from_evidence
    (I : ImplementabilityRevelationPackage) (E : ImplementabilityRevelationEvidence I) :
    ImplementabilityRevelationClosed I := by
  exact And.intro E.directMechanismClosed
    (And.intro E.incentiveCompatibilityDirectRevelationClosed
      (And.intro E.revenueEquivalenceClosed E.bayesianNashImplementationClosed))

end HautevilleHouse.ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean