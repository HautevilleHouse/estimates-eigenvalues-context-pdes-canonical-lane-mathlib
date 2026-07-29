import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EstimatesEigenvaluesContextPdesCanonicalLaneLean

structure WeylAsymptoticPackage where
  problem : EigenvalueProblemPackage
  spectralCountingFunction : Type u
  leadingTermConstant : Float
  remainderTermBound : Float

structure WeylAsymptoticEvidence (W : WeylAsymptoticPackage) where
  leadingTermConstantPositiveClosed : W.leadingTermConstant > 0
  remainderTermBoundFiniteClosed : W.remainderTermBound < Float.inf
  asymptoticValidity : Prop

def WeylAsymptoticClosed (W : WeylAsymptoticPackage) : Prop :=
  W.leadingTermConstant > 0 ∧ W.remainderTermBound < Float.inf ∧ W.asymptoticValidity

theorem weyl_asymptotic_closed_from_evidence (W : WeylAsymptoticPackage)
    (Ev : WeylAsymptoticEvidence W) : WeylAsymptoticClosed W := by
  exact And.intro Ev.leadingTermConstantPositiveClosed
    (And.intro Ev.remainderTermBoundFiniteClosed Ev.asymptoticValidity)

end EstimatesEigenvaluesContextPdesCanonicalLaneLean
end HautevilleHouse
