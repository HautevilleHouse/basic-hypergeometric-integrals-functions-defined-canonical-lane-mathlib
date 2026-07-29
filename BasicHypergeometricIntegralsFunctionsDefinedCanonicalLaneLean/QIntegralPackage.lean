import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasicHypergeometricIntegralsFunctionsDefinedCanonicalLaneLean

structure QIntegralDomain where
  base : ℂ
  integrationPath : Set ℂ
  measure : Prop
  convergenceCondition : Prop

structure QIntegral where
  domain : QIntegralDomain
  integrand : ℂ → ℂ
  result : ℂ
  thomaeJacksonIntegral : Prop
  transformationProperties : Prop
  contourDeformation : Prop

def QIntegralClosed (I : QIntegral) : Prop :=
  I.thomaeJacksonIntegral ∧ I.transformationProperties ∧ I.contourDeformation

structure QIntegralEvidence (I : QIntegral) where
  thomaeJacksonIntegralClosed : I.thomaeJacksonIntegral
  transformationPropertiesClosed : I.transformationProperties
  contourDeformationClosed : I.contourDeformation

theorem q_integral_closed_from_evidence (I : QIntegral) (E : QIntegralEvidence I) :
    QIntegralClosed I := by
  exact And.intro E.thomaeJacksonIntegralClosed
    (And.intro E.transformationPropertiesClosed E.contourDeformationClosed)

end BasicHypergeometricIntegralsFunctionsDefinedCanonicalLaneLean
end HautevilleHouse