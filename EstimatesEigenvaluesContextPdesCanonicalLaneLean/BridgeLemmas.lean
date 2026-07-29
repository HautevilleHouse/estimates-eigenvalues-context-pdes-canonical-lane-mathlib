import EstimativesEigenvaluesContextPdesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EstimativesEigenvaluesContextPdesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EigenvalueWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EstimativesEigenvaluesContextPdesCanonicalLaneLean
end HautevilleHouse