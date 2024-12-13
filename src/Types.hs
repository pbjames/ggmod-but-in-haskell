module Types (Character (..)) where

data Character
  = SOL
  | KYK
  | MAY
  | AXL
  | CHP
  | POT
  | FAU
  | MLL
  | ZAT
  | RAM
  | LEO
  | NAG
  | GIO
  | ANJ
  | INO
  | GLD
  | JKO
  | COS
  | BKN
  | TST
  | BRI
  | SIN
  | BED
  | ASK
  | JON
  | ELP
  | ABA
  | SLY
  deriving (Eq)

instance Show Character where
  show SOL = "Sol Badguy"
  show KYK = "Ky Kiske"
  show MAY = "May"
  show AXL = "Axl Low"
  show CHP = "Chipp Zanuff"
  show POT = "Potemkin"
  show FAU = "Faust"
  show MLL = "Millia Rage"
  show ZAT = "Zato-1"
  show RAM = "Ramlethal Valentine"
  show LEO = "Leo Whitefang"
  show NAG = "Nagoryuki"
  show GIO = "Giovanna"
  show ANJ = "Anji Mito"
  show INO = "I-No"
  show GLD = "Goldlewis Dickinson"
  show JKO = "Jack-O' Valentine"
  show COS = "Happy Chaos"
  show BKN = "Baiken"
  show TST = "Testament"
  show BRI = "Bridget"
  show SIN = "Sin Kiske"
  show BED = "Bedman?"
  show ASK = "Asuka R#"
  show JON = "Johnny"
  show ELP = "Elphelt"
  show ABA = "A.B.A"
  show SLY = "Slayer"
