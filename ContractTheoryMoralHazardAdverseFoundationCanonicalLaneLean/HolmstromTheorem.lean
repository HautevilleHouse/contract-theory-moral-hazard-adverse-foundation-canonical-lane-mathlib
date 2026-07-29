import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean

structure HolmstromTheorem where
  agentAction : Type u
  outputDistribution : agentAction -> Type v
  compensationScheme : agentAction -> Type w
  effortCost : agentAction -> Prop
  incentiveConstraint : Prop
  firstOrderCondition : Prop
  monotoneLikelihoodRatio : Prop
  convexityOfDistribution : Prop
  cutProperty : Prop

structure HolmstromTheoremEvidence (H : HolmstromTheorem) where
  incentiveConstraintClosed : H.incentiveConstraint
  firstOrderConditionClosed : H.firstOrderCondition
  monotoneLikelihoodRatioClosed : H.monotoneLikelihoodRatio
  convexityOfDistributionClosed : H.convexityOfDistribution
  cutPropertyClosed : H.cutProperty

def HolmstromTheoremClosed (H : HolmstromTheorem) : Prop :=
  H.incentiveConstraint ∧ H.firstOrderCondition ∧ H.monotoneLikelihoodRatio ∧
  H.convexityOfDistribution ∧ H.cutProperty

theorem holmstrom_theorem_closed_from_evidence (H : HolmstromTheorem)
    (E : HolmstromTheoremEvidence H) : HolmstromTheoremClosed H := by
  exact And.intro E.incentiveConstraintClosed
    (And.intro E.firstOrderConditionClosed
      (And.intro E.monotoneLikelihoodRatioClosed
        (And.intro E.convexityOfDistributionClosed E.cutPropertyClosed)))

end ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean
end HautevilleHouse