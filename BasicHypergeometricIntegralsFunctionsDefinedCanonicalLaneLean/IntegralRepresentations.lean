import canonicalLaneMathlib.AdmissibleClass
import BasicHypergeometricSeries

namespace HautevilleHouse
namespace BasicHypergeometricIntegralsFunctionsDefinedCanonicalLaneLean

structure IntegralRepresentationPackage {A : AdmissibleClass}
    (S : BasicHypergeometricSeriesPackage A) where
  integrand : ℂ → ℂ
  integrationContour : Set ℂ
  representationEquality : Prop
  analyticContinuation : Prop

structure IntegralRepresentationEvidence {A : AdmissibleClass}
    {S : BasicHypergeometricSeriesPackage A}
    (I : IntegralRepresentationPackage S) where
  representationEqualityClosed : I.representationEquality
  analyticContinuationClosed : I.analyticContinuation

def IntegralRepresentationClosed {A : AdmissibleClass}
    {S : BasicHypergeometricSeriesPackage A}
    (I : IntegralRepresentationPackage S) : Prop :=
  I.representationEquality ∧ I.analyticContinuation

theorem integralRepresentationClosed_from_evidence {A : AdmissibleClass}
    {S : BasicHypergeometricSeriesPackage A}
    (I : IntegralRepresentationPackage S) (E : IntegralRepresentationEvidence I) :
    IntegralRepresentationClosed I := by
  exact And.intro E.representationEqualityClosed E.analyticContinuationClosed

end BasicHypergeometricIntegralsFunctionsDefinedCanonicalLaneLean
end HautevilleHouse