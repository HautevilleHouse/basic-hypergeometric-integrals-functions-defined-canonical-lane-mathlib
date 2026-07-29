import BasicHypergeometricIntegralsFunctionsDefinedCanonicalLaneLean.HypergeometricSeries

namespace HautevilleHouse
namespace BasicHypergeometricIntegralsFunctionsDefinedCanonicalLaneLean

structure JacksonIntegral (q : ℕ) (base : ℕ) where
  integrand : Type u
  measure : Type v
  contour : Type w
  integralDefined : Prop
  converges : Prop
  evaluationKnown : Prop
  integrandTerm : integrand
  measureTerm : measure
  contourTerm : contour
  integralDefinedTerm : integralDefined
  convergesTerm : converges
  evaluationKnownTerm : evaluationKnown

structure BarnesIntegral (a b : ℂ) where
  integrand : ℂ → ℂ
  contour : Set ℂ
  integralDefined : Prop
  analyticContinuation : Prop
  integralDefinedTerm : integralDefined
  analyticContinuationTerm : analyticContinuation

def IntegralRepresentationClosed (I : JacksonIntegral 0 0) : Prop :=
  I.integralDefined ∧ I.converges ∧ I.evaluationKnown

theorem jackson_integral_closed_from_evidence (I : JacksonIntegral 0 0) (E : I.integralDefined ∧ I.converges ∧ I.evaluationKnown) :
    IntegralRepresentationClosed I := by
  exact And.intro E.1 (And.intro E.2.1 E.2.2)

end BasicHypergeometricIntegralsFunctionsDefinedCanonicalLaneLean
end HautevilleHouse