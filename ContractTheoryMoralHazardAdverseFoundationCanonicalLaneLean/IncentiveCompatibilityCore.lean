import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean

structure IncentiveCompatibilityCore where
  icConstraint : Prop
  icNecessary : Prop
  icSufficient : Prop
  monotoneLikelihoodRatio : Prop
  convexityOfDistributionFunction : Prop
  firstOrderApproach : Prop
  effortDistributionMap : Type u

structure IncentiveCompatibilityCoreEvidence (I : IncentiveCompatibilityCore) where
  icConstraintClosed : I.icConstraint
  icNecessaryClosed : I.icNecessary
  icSufficientClosed : I.icSufficient
  monotoneLikelihoodRatioClosed : I.monotoneLikelihoodRatio
  convexityOfDistributionFunctionClosed : I.convexityOfDistributionFunction
  firstOrderApproachClosed : I.firstOrderApproach

def IncentiveCompatibilityCoreClosed (I : IncentiveCompatibilityCore) : Prop :=
  I.icConstraint ∧ I.icNecessary ∧ I.icSufficient ∧
  I.monotoneLikelihoodRatio ∧ I.convexityOfDistributionFunction ∧ I.firstOrderApproach

theorem incentive_compatibility_core_closed_from_evidence
    (I : IncentiveCompatibilityCore) (E : IncentiveCompatibilityCoreEvidence I) :
    IncentiveCompatibilityCoreClosed I :=
  And.intro E.icConstraintClosed
    (And.intro E.icNecessaryClosed
      (And.intro E.icSufficientClosed
        (And.intro E.monotoneLikelihoodRatioClosed
          (And.intro E.convexityOfDistributionFunctionClosed
            E.firstOrderApproachClosed))))

end ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean
end HautevilleHouse