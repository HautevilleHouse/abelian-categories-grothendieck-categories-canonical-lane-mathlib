import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean

structure GrothendieckAbelianConditionPackage where
  abelian : Prop
  cocomplete : Prop
  filteredColimitsExact : Prop
  generatorExists : Prop

structure GrothendieckAbelianConditionEvidence (G : GrothendieckAbelianConditionPackage) where
  abelianClosed : G.abelian
  cocompleteClosed : G.cocomplete
  filteredColimitsExactClosed : G.filteredColimitsExact
  generatorExistsClosed : G.generatorExists

def GrothendieckAbelianConditionClosed (G : GrothendieckAbelianConditionPackage) : Prop :=
  G.abelian ∧ G.cocomplete ∧ G.filteredColimitsExact ∧ G.generatorExists

theorem grothendieck_abelian_condition_closed_from_evidence
    (G : GrothendieckAbelianConditionPackage)
    (E : GrothendieckAbelianConditionEvidence G) :
    GrothendieckAbelianConditionClosed G := by
  exact And.intro E.abelianClosed
    (And.intro E.cocompleteClosed
      (And.intro E.filteredColimitsExactClosed E.generatorExistsClosed))

end AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean
end HautevilleHouse