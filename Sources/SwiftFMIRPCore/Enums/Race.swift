enum Race {
  case humans
  case orcs
  case nightElves
  case undead
}

extension Race : CustomStringConvertible {
  var description: String {
    switch self {
      case .humans: return "Humans"
      case .orcs: return "Orcs"
      case .nightElves: return "Night Elves"
      case .undead: return "Undead"
    }
  }
}

extension Race : CaseIterable {}