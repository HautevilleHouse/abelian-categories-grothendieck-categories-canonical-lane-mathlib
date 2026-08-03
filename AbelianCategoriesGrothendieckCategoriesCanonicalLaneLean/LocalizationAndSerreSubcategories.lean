import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean

structure LocalizationAndSerreSubcategoriesPackage where
  serreSubcategory : Prop
  quotientCategory : Prop
  localizationFunctorExact : Prop
  essentialImage : Prop

structure LocalizationAndSerreSubcategoriesEvidence (L : LocalizationAndSerreSubcategoriesPackage) where
  serreSubcategoryClosed : L.serreSubcategory
  quotientCategoryClosed : L.quotientCategory
  localizationFunctorExactClosed : L.localizationFunctorExact
  essentialImageClosed : L.essentialImage

def LocalizationAndSerreSubcategoriesClosed (L : LocalizationAndSerreSubcategoriesPackage) : Prop :=
  L.serreSubcategory ∧ L.quotientCategory ∧ L.localizationFunctorExact ∧ L.essentialImage

theorem localization_and_serre_subcategories_closed_from_evidence
    (L : LocalizationAndSerreSubcategoriesPackage)
    (E : LocalizationAndSerreSubcategoriesEvidence L) :
    LocalizationAndSerreSubcategoriesClosed L := by
  exact And.intro E.serreSubcategoryClosed
    (And.intro E.quotientCategoryClosed
      (And.intro E.localizationFunctorExactClosed E.essentialImageClosed))

end AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean
end HautevilleHouse