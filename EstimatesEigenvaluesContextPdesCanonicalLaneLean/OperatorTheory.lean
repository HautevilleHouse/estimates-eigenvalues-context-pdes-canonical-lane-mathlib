import EstimativesEigenvaluesContextPdesCanonicalLaneLean.DomainGeometry

/-!
# Operator Theory Package
-/

namespace HautevilleHouse
namespace EstimativesEigenvaluesContextPdesCanonicalLaneLean

structure OperatorTheoryPackage {G : DomainGeometryPackage} where
  operator : Type u
  domain : G.manifold -> Prop
  spectrum : Set ℝ
  resolventCompact : Prop

def OperatorTheoryClosed {G : DomainGeometryPackage} (O : OperatorTheoryPackage G) : Prop :=
  O.resolventCompact

end EstimativesEigenvaluesContextPdesCanonicalLaneLean
end HautevilleHouse