import BasicHypergeometricIntegralsFunctionsDefinedCanonicalLaneLean.HypergeometricSeries

namespace HautevilleHouse
namespace BasicHypergeometricIntegralsFunctionsDefinedCanonicalLaneLean

structure ContiguousRelation (S : BasicHypergeometricSeries 1 1) where
  leftFunction : ℂ → ℂ
  rightFunction : ℂ → ℂ
  identityHolds : ∀ x : ℂ, leftFunction x = rightFunction x
  proof : identityHolds
  identityHoldsTerm : identityHolds

def ContiguousRelationClosed (R : ContiguousRelation (BasicHypergeometricSeries.mk _ _)) : Prop :=
  R.identityHolds

theorem contiguous_relation_closed_from_evidence (R : ContiguousRelation (BasicHypergeometricSeries.mk _ _)) (E : R.identityHolds) :
    ContiguousRelationClosed R := by
  exact E

end BasicHypergeometricIntegralsFunctionsDefinedCanonicalLaneLean
end HautevilleHouse