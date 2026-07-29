import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EstimativesEigenvaluesContextPdesCanonicalLaneLean

structure AdmissibleClass where
  object : EstimativeAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EigenvalueWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EstimativesEigenvaluesContextPdesCanonicalLaneLean
end HautevilleHouse