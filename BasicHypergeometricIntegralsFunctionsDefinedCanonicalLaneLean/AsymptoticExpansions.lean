import BasicHypergeometricIntegralsFunctionsDefinedCanonicalLaneLean.ContiguousRelations

namespace HautevilleHouse
namespace BasicHypergeometricIntegralsFunctionsDefinedCanonicalLaneLean

structure AsymptoticExpansion (S : BasicHypergeometricSeries 1 1) where
  expansion : ℕ → ℂ
  leadingOrder : ℝ
  errorBound : ℕ → ℝ
  asymptoticCondition : Prop
  expansionTerm : expansion
  leadingOrderTerm : leadingOrder
  errorBoundTerm : errorBound
  asymptoticConditionTerm : asymptoticCondition

def AsymptoticExpansionClosed (E : AsymptoticExpansion (BasicHypergeometricSeries.mk _ _)) : Prop :=
  E.asymptoticCondition

theorem asymptotic_expansion_closed_from_evidence (E : AsymptoticExpansion (BasicHypergeometricSeries.mk _ _)) (H : E.asymptoticCondition) :
    AsymptoticExpansionClosed E := by
  exact H

end BasicHypergeometricIntegralsFunctionsDefinedCanonicalLaneLean
end HautevilleHouse