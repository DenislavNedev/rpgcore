enum RpgWeapon {
  case battleAxe
  case crossBow
  case dagger
  case greatAxe
  case handAxe
  case javelin
  case lightHammer
  case longBow
  case longSword
  case sickle
  case rapier
  case shortSword
  case flail
  case spear
  case halberd
}

extension RpgWeapon : Weapon  {
    var defence : Int {
      switch self {
        case .battleAxe: return 4
        case .crossBow: return 3
        case .dagger: return 1
        case .greatAxe: return 5
        case .handAxe: return 1
        case .javelin: return 2
        case .lightHammer: return 7
        case .longBow: return 5
        case .longSword: return 6
        case .sickle: return 4
        case .rapier: return 7
        case .shortSword: return 3 
        case .flail: return 3
        case .spear: return 5
        case .halberd: return 7
      }
  }

    var attack : Int {
      switch self {
        case .battleAxe: return 8
        case .dagger: return 5
        case .greatAxe: return 17
        case .handAxe: return 9
        case .javelin: return 25
        case .lightHammer: return 14
        case .longBow: return 21
        case .longSword: return 25 
        case .sickle: return 6
        case .rapier: return 7
        case .shortSword: return 8 
        case .flail: return 12
        case .spear: return 8
        case .crossBow: return 8 
        case .halberd: return 4 
      }
  }
}

extension RpgWeapon : CustomStringConvertible  {
  var description: String {
    switch self {
      case .battleAxe: return "Battle Axe"
      case .dagger: return "Dagger"
      case .greatAxe: return "Great Axe"
      case .handAxe: return "Hand Axe"
      case .javelin: return "Javelin"
      case .lightHammer: return "Light Hammer"
      case .longBow: return "Long Bow"
      case .longSword: return "Long Sword"
      case .sickle: return "Sickle"
      case .rapier: return "Rapier"
      case .shortSword: return "Short Sword"
      case .flail: return "Flail"
      case .spear: return "Spear"
      case .crossBow: return "Cross Bow"
      case .halberd: return "Halberd"
    }
  }
}

extension RpgWeapon : CaseIterable {}