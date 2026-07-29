import EstimativesEigenvaluesContextPdesCanonicalLaneLean.OperatorTheory

/-!
# Spectral Bound Package
-/

namespace HautevilleHouse
namespace EstimativesEigenvaluesContextPdesCanonicalLaneLean

structure SpectralBoundPackage {G : DomainGeometryPackage} {O : OperatorTheoryPackage G} where
  lowerBound : ℝ
  upperBound : ℝ
  boundEstablished : Prop
  boundOptimal : Prop

def SpectralBoundClosed {G : DomainGeometryPackage} {O : OperatorTheoryPackage G}
    (B : SpectralBoundPackage G O) : Prop :=
  B.boundEstablished ∧ B.boundOptimal

end EstimativesEigenvaluesContextPdesCanonicalLaneLean
end HautevilleHouse