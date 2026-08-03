import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean

structure InjectiveEnvelopePackage where
  enoughInjectives : Prop
  injectiveEnvelopeExists : Prop
  essentialExtension : Prop
  minimalInjective : Prop

structure InjectiveEnvelopeEvidence (I : InjectiveEnvelopePackage) where
  enoughInjectivesClosed : I.enoughInjectives
  injectiveEnvelopeExistsClosed : I.injectiveEnvelopeExists
  essentialExtensionClosed : I.essentialExtension
  minimalInjectiveClosed : I.minimalInjective

def InjectiveEnvelopeClosed (I : InjectiveEnvelopePackage) : Prop :=
  I.enoughInjectives ∧ I.injectiveEnvelopeExists ∧ I.essentialExtension ∧ I.minimalInjective

theorem injective_envelope_closed_from_evidence
    (I : InjectiveEnvelopePackage) (E : InjectiveEnvelopeEvidence I) :
    InjectiveEnvelopeClosed I := by
  exact And.intro E.enoughInjectivesClosed
    (And.intro E.injectiveEnvelopeExistsClosed
      (And.intro E.essentialExtensionClosed E.minimalInjectiveClosed))

end AbelianCategoriesGrothendieckCategoriesCanonicalLaneLean
end HautevilleHouse