import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean

structure GrothendieckCategoryAxioms where
  isAbelian : Prop
  hasFilteredColimits : Prop
  hasGenerator : Prop
  hasInjectiveEnvelope : Prop
  abelianClosed : isAbelian
  filteredColimitsClosed : hasFilteredColimits
  generatorClosed : hasGenerator
  injectiveEnvelopeClosed : hasInjectiveEnvelope

def GrothendieckCategoryAxiomsClosed (A : GrothendieckCategoryAxioms) : Prop :=
  A.isAbelian ∧ A.hasFilteredColimits ∧ A.hasGenerator ∧ A.hasInjectiveEnvelope

theorem grothendieck_category_axioms_closed_from_evidence
    (A : GrothendieckCategoryAxioms) : GrothendieckCategoryAxiomsClosed A := by
  exact And.intro A.abelianClosed
    (And.intro A.filteredColimitsClosed
      (And.intro A.generatorClosed A.injectiveEnvelopeClosed))

end AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean
end HautevilleHouse