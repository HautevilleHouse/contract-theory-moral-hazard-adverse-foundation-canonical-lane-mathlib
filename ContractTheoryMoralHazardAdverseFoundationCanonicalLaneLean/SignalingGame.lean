import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean

structure SignalingGame where
  senderType : Type u
  receiverAction : Type v
  signalSpace : Type w
  senderPayoff : senderType → signalSpace → receiverAction → ℝ
  receiverPayoff : senderType → signalSpace → receiverAction → ℝ
  perfectBayesianEquilibrium : Prop
  separatingEquilibrium : Prop
  poolingEquilibrium : Prop

def signalingClosed (G : SignalingGame) : Prop :=
  G.perfectBayesianEquilibrium ∧ (G.separatingEquilibrium ∨ G.poolingEquilibrium)

end ContractTheoryMoralHazardAdverseFoundationCanonicalLaneLean
end HautevilleHouse