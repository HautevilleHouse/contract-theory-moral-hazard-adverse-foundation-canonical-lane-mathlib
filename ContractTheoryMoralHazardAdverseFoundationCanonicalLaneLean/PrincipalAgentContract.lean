import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean

structure PrincipalAgentContract where
  effortLevel : Type u
  outputDistribution : effortLevel -> Type v
  compensationScheme : effortLevel -> Type w
  agentUtility : Prop
  principalProfit : Prop
  incentiveCompatibility : Prop
  participationConstraint : Prop

structure PrincipalAgentContractEvidence (C : PrincipalAgentContract) where
  agentUtilityClosed : C.agentUtility
  principalProfitClosed : C.principalProfit
  incentiveCompatibilityClosed : C.incentiveCompatibility
  participationConstraintClosed : C.participationConstraint

def PrincipalAgentContractClosed (C : PrincipalAgentContract) : Prop :=
  C.agentUtility ∧ C.principalProfit ∧ C.incentiveCompatibility ∧ C.participationConstraint

theorem principal_agent_contract_closed_from_evidence (C : PrincipalAgentContract)
    (E : PrincipalAgentContractEvidence C) : PrincipalAgentContractClosed C := by
  exact And.intro E.agentUtilityClosed
    (And.intro E.principalProfitClosed
      (And.intro E.incentiveCompatibilityClosed E.participationConstraintClosed))

end ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean
end HautevilleHouse