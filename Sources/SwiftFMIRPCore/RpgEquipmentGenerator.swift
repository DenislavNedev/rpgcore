class RpgEquipmentGenerator : EquipmentGenerator {
  var allArmors: [Armor]
  var allWeapons: [Weapon]

  init() {
    allArmors = RpgArmor.allCases
    allWeapons = RpgWeapon.allCases
  }

  func randomWeapon() -> Weapon? {
    return self.allWeapons.randomElement()!
  }

  func randomArmor() -> Armor? {
    return self.allArmors.randomElement()!
  }
}