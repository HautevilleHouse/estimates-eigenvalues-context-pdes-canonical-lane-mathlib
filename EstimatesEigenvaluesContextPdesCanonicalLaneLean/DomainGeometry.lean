import canonicalLaneMathlib.AdmissibleClass

/-!
# Domain Geometry Package
-/

namespace HautevilleHouse
namespace EstimativesEigenvaluesContextPdesCanonicalLaneLean

structure DomainGeometryPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  metric : Type v
  smoothness : Prop
  boundedness : Prop

def DomainGeometryClosed (G : DomainGeometryPackage) : Prop :=
  G.smoothness ∧ G.boundedness

end EstimativesEigenvaluesContextPdesCanonicalLaneLean
end HautevilleHouse