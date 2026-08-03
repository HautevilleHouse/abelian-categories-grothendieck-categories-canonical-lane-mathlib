import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean

structure InjectiveResolutionPackage where
  category : Type u
  enoughInjectives : Prop
  resolutionExists : Prop
  uniquenessUpToHomotopy : Prop

structure InjectiveResolutionEvidence (I : InjectiveResolutionPackage) where
  enoughInjectivesClosed : I.enoughInjectives
  resolutionExistsClosed : I.resolutionExists
  uniquenessUpToHomotopyClosed : I.uniquenessUpToHomotopy

def InjectiveResolutionClosed (I : InjectiveResolutionPackage) : Prop :=
  I.enoughInjectives ∧ I.resolutionExists ∧ I.uniquenessUpToHomotopy

theorem injective_resolution_closed_from_evidence (I : InjectiveResolutionPackage) (E : InjectiveResolutionEvidence I) :
    InjectiveResolutionClosed I := by
  exact And.intro E.enoughInjectivesClosed (And.intro E.resolutionExistsClosed E.uniquenessUpToHomotopyClosed)

end AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean
end HautevilleHouse
