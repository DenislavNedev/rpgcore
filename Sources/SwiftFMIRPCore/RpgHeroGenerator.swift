struct RpgHero: Hero {
    var race: String = Race.allCases.randomElement()?.description ?? Race.humans.description 

    var energy: Int = 0
    var lifePoitns: Int = 0

    var weapon: Weapon? = RpgWeapon.noWeapon
    var armor: Armor? =  RpgArmor.noArmor

    init() {
      self.energy = generateEnergy(race: self.race)
      self.lifePoitns = generateLifePoints(race: self.race)
      self.weapon = generateWeaponByRace(race: self.race)
      self.armor = generateArmorByRace(race : self.race)
    }
    
    private func generateEnergy(race: String) -> Int {
      switch race {
        case Race.humans.description: return Int.random(in: 25 ... 35)
        case Race.orcs.description: return Int.random(in: 20 ... 30)
        case Race.nightElves.description: return Int.random(in: 22 ... 32)
        case Race.undead.description: return Int.random(in: 20 ... 30)
        default: return 25
      }
    }

    private func generateLifePoints(race: String) -> Int {
      switch race {
        case Race.humans.description: return Int.random(in: 100 ... 130)
        case Race.orcs.description: return Int.random(in: 110 ... 125)
        case Race.nightElves.description: return Int.random(in: 90 ... 120)
        case Race.undead.description: return Int.random(in: 100 ... 110)
        default: return 100
      }
    }

    private func generateWeaponByRace(race: String) -> Weapon {
      switch race {
        case Race.humans.description: return humanWeapons()
        case Race.orcs.description: return orcsWeapons()
        case Race.nightElves.description: return nightElvesWeapons()
        case Race.undead.description: return undeadWeapons()
        default: return RpgWeapon.noWeapon
      }
    }

    private func undeadWeapons() -> Weapon {
      switch Int.random(in: 1 ... 3) {
        case 1: return RpgWeapon.rapier
        case 2: return RpgWeapon.flail
        default: return RpgWeapon.sickle
      }
    }

    private func nightElvesWeapons() -> Weapon {
      switch Int.random(in: 1 ... 3) {
        case 1: return RpgWeapon.javelin
        case 2: return RpgWeapon.dagger
        default: return RpgWeapon.spear
      }
    }
    
    private func humanWeapons() -> Weapon {
      switch Int.random(in: 1 ... 3) {
        case 1: return RpgWeapon.greatAxe
        case 2: return RpgWeapon.handAxe
        default: return RpgWeapon.longBow
      }
    }
    
    private func orcsWeapons() -> Weapon {
      switch Int.random(in: 1 ... 3) {
        case 1: return RpgWeapon.crossBow
        case 2: return RpgWeapon.shortSword
        default: return RpgWeapon.halberd
      }
    }

    private func generateArmorByRace(race: String) -> Armor{
      switch race {
        case Race.humans.description: return humanArmor()
        case Race.orcs.description: return orcsArmor()
        case Race.nightElves.description: return nightElvesArmor()
        case Race.undead.description: return undeadArmor()
        default: return RpgArmor.noArmor
      }
    } 

    private func undeadArmor() -> Armor {
      switch Int.random(in: 1 ... 2) {
        case 1: return RpgArmor.mediumHide
        default: return RpgArmor.scaleMail
      }
    }

    private func humanArmor() -> Armor {
      switch Int.random(in: 1 ... 2) {
        case 1: return RpgArmor.leatherArmor
        default: return RpgArmor.chainShirt
      }
    }

    private func orcsArmor() -> Armor {
      switch Int.random(in: 1 ... 2) {
        case 1: return RpgArmor.halfPlate
        default: return RpgArmor.fullPlate
      }
    }

    private func nightElvesArmor() -> Armor {
      switch Int.random(in: 1 ... 2) {
        case 1: return RpgArmor.bucklerShield
        default: return RpgArmor.lightShield
      }
    }
}

class RpgHeroGenerator : HeroGenerator {
  func getRandom() -> Hero{
    return RpgHero()
  }
} 