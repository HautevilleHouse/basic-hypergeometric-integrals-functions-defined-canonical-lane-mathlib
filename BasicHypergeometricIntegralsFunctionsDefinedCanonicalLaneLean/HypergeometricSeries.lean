import BasicHypergeometricIntegralsFunctionsDefinedCanonicalLaneLean.IntegralRepresentation

namespace HautevilleHouse
namespace BasicHypergeometricIntegralsFunctionsDefinedCanonicalLaneLean

structure QPochhammerSymbol (q : ℂ) (a : ℂ) (n : ℕ) where
  value : ℂ
  factorization : Prop
  infiniteProduct : Prop
  valueTerm : value
  factorizationTerm : factorization
  infiniteProductTerm : infiniteProduct

structure BasicHypergeometricSeries (r s : ℕ) where
  numeratorParameters : List ℂ
  denominatorParameters : List ℂ
  base : ℂ
  variable : ℂ
  sumDefined : Prop
  termFormula : ℕ → ℂ
  convergenceRadius : ℝ
  sumDefinedTerm : sumDefined
  termFormulaTerm : termFormula
  convergenceRadiusTerm : convergenceRadius

def SeriesClosed (S : BasicHypergeometricSeries 1 1) : Prop :=
  S.sumDefined ∧ S.convergenceRadius > 0

theorem series_closed_from_evidence (S : BasicHypergeometricSeries 1 1) (E : S.sumDefined ∧ S.convergenceRadius > 0) :
    SeriesClosed S := by
  exact And.intro E.1 E.2

end BasicHypergeometricIntegralsFunctionsDefinedCanonicalLaneLean
end HautevilleHouse