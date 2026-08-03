import canonicalLaneMathlib.AdmissibleClass
import AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean.AbelianCategoryAxioms

namespace HautevilleHouse
namespace AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean

structure GrothendieckCategoryPackage (A : AbelianCategoryPackage) where
  abelianClosed : AbelianCategoryClosed A
  hasGenerator : Prop
  exactDirectLimits : Prop

structure GrothendieckCategoryEvidence {A : AbelianCategoryPackage} (G : GrothendieckCategoryPackage A) where
  abelianClosedTerm : G.abelianClosed
  hasGeneratorClosed : G.hasGenerator
  exactDirectLimitsClosed : G.exactDirectLimits

def GrothendieckCategoryClosed {A : AbelianCategoryPackage} (G : GrothendieckCategoryPackage A) : Prop :=
  G.abelianClosed ∧ G.hasGenerator ∧ G.exactDirectLimits

theorem grothendieck_category_closed_from_evidence {A : AbelianCategoryPackage} (G : GrothendieckCategoryPackage A) (E : GrothendieckCategoryEvidence G) :
    GrothendieckCategoryClosed G := by
  exact And.intro E.abelianClosedTerm (And.intro E.hasGeneratorClosed E.exactDirectLimitsClosed)

end AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean
end HautevilleHouse
