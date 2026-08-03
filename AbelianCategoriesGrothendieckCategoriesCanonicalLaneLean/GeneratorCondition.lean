import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean

structure GeneratorPackage where
  category : Type u
  generatorObject : Type u
  generates : Prop
  forallObjectInCategory : Prop
  generatorMorphismExists : Prop

structure GeneratorEvidence (G : GeneratorPackage) where
  generatesClosed : G.generates
  forallObjectInCategoryClosed : G.forallObjectInCategory
  generatorMorphismExistsClosed : G.generatorMorphismExists

def GeneratorClosed (G : GeneratorPackage) : Prop :=
  G.generates ∧ G.forallObjectInCategory ∧ G.generatorMorphismExists

theorem generator_closed_from_evidence (G : GeneratorPackage) (E : GeneratorEvidence G) :
    GeneratorClosed G := by
  exact And.intro E.generatesClosed (And.intro E.forallObjectInCategoryClosed E.generatorMorphismExistsClosed)

end AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean
end HautevilleHouse
