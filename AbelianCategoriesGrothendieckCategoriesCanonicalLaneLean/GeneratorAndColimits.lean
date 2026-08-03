import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean

structure GeneratorAndColimits where
  generatorExists : Prop
  filteredColimitsExact : Prop
  generatorClosed : generatorExists
  filteredColimitsClosed : filteredColimitsExact

def GeneratorAndColimitsClosed (G : GeneratorAndColimits) : Prop :=
  G.generatorExists ∧ G.filteredColimitsExact

theorem generator_and_colimits_closed_from_evidence
    (G : GeneratorAndColimits) : GeneratorAndColimitsClosed G := by
  exact And.intro G.generatorClosed G.filteredColimitsClosed

end AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean
end HautevilleHouse