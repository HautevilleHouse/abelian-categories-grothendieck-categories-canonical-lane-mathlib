import AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean.GrothendieckCategory

namespace HautevilleHouse
namespace AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean

structure GeneratorPackage where
  category : Type u
  generatorObject : Prop
  generatingFamily : Prop
  generatorProperty : Prop
  evidence : generatorObject ∧ generatingFamily ∧ generatorProperty

def GeneratorClosed (G : GeneratorPackage) : Prop :=
  G.generatorObject ∧ G.generatingFamily ∧ G.generatorProperty

theorem generator_closed_from_evidence (G : GeneratorPackage) :
    GeneratorClosed G := by
  exact G.evidence

end AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean
end HautevilleHouse