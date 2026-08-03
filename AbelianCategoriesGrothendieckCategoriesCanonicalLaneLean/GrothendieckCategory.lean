import HautevilleHouse.AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean.AbelianCategory

/-!
# Grothendieck Category Package
-/

namespace HautevilleHouse
namespace AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean

structure GrothendieckCategoryPackage {P : AbelianCategoryPackage} where
  hasSmallColimits : Prop
  hasExactFilteredColimits : Prop
  hasGenerator : Prop

structure GrothendieckCategoryEvidence {P : AbelianCategoryPackage}
    (G : GrothendieckCategoryPackage P) where
  hasSmallColimitsClosed : G.hasSmallColimits
  hasExactFilteredColimitsClosed : G.hasExactFilteredColimits
  hasGeneratorClosed : G.hasGenerator

def GrothendieckCategoryClosed {P : AbelianCategoryPackage}
    (G : GrothendieckCategoryPackage P) : Prop :=
  G.hasSmallColimits ∧ G.hasExactFilteredColimits ∧ G.hasGenerator ∧
  AbelianCategoryClosed P

theorem grothendieck_category_closed_from_evidence
    {P : AbelianCategoryPackage} (G : GrothendieckCategoryPackage P)
    (E : GrothendieckCategoryEvidence G) (Pcl : AbelianCategoryClosed P) :
    GrothendieckCategoryClosed G := by
  exact And.intro E.hasSmallColimitsClosed
    (And.intro E.hasExactFilteredColimitsClosed
      (And.intro E.hasGeneratorClosed Pcl))

end AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean
end HautevilleHouse