import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasicHypergeometricIntegralsFunctionsDefinedCanonicalLaneLean

structure QPochhammerSymbol (q : ℂ) (a : ℂ) where
  infiniteProduct : Prop
  convergenceDomain : Prop
  zeroInfiniteProduct : Prop
  finiteRepresentation : Prop

structure BasicHypergeometricSeries (r s : ℕ) where
  base : ℂ
  upperParams : Vector ℂ r
  lowerParams : Vector ℂ s
  variable : ℂ
  seriesSum : ℂ
  radiusOfConvergence : ℂ
  termGivenByQPochhammer : Prop
  contiguousRelations : Prop

def BasicHypergeometricSeriesClosed (S : BasicHypergeometricSeries r s) : Prop :=
  S.termGivenByQPochhammer ∧ S.contiguousRelations

structure BasicHypergeometricSeriesEvidence (S : BasicHypergeometricSeries r s) where
  termGivenByQPochhammerClosed : S.termGivenByQPochhammer
  contiguousRelationsClosed : S.contiguousRelations

theorem basic_hypergeometric_series_closed_from_evidence
    (S : BasicHypergeometricSeries r s) (E : BasicHypergeometricSeriesEvidence S) :
    BasicHypergeometricSeriesClosed S := by
  exact And.intro E.termGivenByQPochhammerClosed E.contiguousRelationsClosed

end BasicHypergeometricIntegralsFunctionsDefinedCanonicalLaneLean
end HautevilleHouse