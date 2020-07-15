enum RpgArmor{
  case noArmor
  case leatherArmor
  case chainShirt
  case mediumHide
  case bandedMail
  case scaleMail
  case halfPlate
  case fullPlate
  case bucklerShield
  case heavyShield
  case lightShield
}

extension RpgArmor : Armor  {
    var defence : Int {
      switch self {
        case .noArmor: return  0
        case .leatherArmor: return  3
        case .chainShirt: return  3
        case .mediumHide: return  5
        case .bandedMail: return  7
        case .scaleMail: return  6
        case .halfPlate: return  5
        case .fullPlate: return  10
        case .bucklerShield: return  7
        case .heavyShield: return  13
        case .lightShield: return  9 
      }
  }

    var attack : Int {
      switch self {
        case .noArmor: return  0
        case .leatherArmor: return  1
        case .chainShirt: return  2
        case .mediumHide: return  1
        case .bandedMail: return  2
        case .scaleMail: return  1
        case .halfPlate: return  1
        case .fullPlate: return  2
        case .bucklerShield: return  2
        case .heavyShield: return  3
        case .lightShield: return  2 
      }
  }
}

extension RpgArmor : CustomStringConvertible  {
  var description: String {
        switch self {
          case .noArmor: return  "No Armor"
          case .leatherArmor: return  "Leather Armor"
          case .chainShirt: return  "Chain Shirt"
          case .mediumHide: return  "Medium Hide"
          case .bandedMail: return  "Banded Mail"
          case .scaleMail: return  "Scale Mail"
          case .halfPlate: return  "Half Plate"
          case .fullPlate: return  "Full Plate"
          case .bucklerShield: return  "Buckler Shield"
          case .heavyShield: return  "Heavy Shield"
          case .lightShield: return  "Light Shield"
        }
      }
}

extension RpgArmor : CaseIterable {}