import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasicHypergeometricIntegralsFunctionsDefinedCanonicalLaneLean

structure BasicHypergeometricIntegralPackage where
  integrandType : Type u
  contourType : Type v
  integralValue : Type w
  integralRepresentation : Prop
  analyticContinuation : Prop
  specialValues : Prop

structure BasicHypergeometricIntegralEvidence (I : BasicHypergeometricIntegralPackage) where
  integralRepresentationClosed : I.integralRepresentation
  analyticContinuationClosed : I.analyticContinuation
  specialValuesClosed : I.specialValues

def BasicHypergeometricIntegralClosed (I : BasicHypergeometricIntegralPackage) : Prop :=
  I.integralRepresentation ∧ I.analyticContinuation ∧ I.specialValues

theorem basic_hypergeometric_integral_closed_from_evidence
    (I : BasicHypergeometricIntegralPackage) (E : BasicHypergeometricIntegralEvidence I) :
    BasicHypergeometricIntegralClosed I := by
  exact And.intro E.integralRepresentationClosed
    (And.intro E.analyticContinuationClosed E.specialValuesClosed)

end BasicHypergeometricIntegralsFunctionsDefinedCanonicalLaneLean
end HautevilleHouse