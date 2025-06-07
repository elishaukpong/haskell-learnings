data Client = GovOrg     String
            | Company    String Integer String String
            | Individual Person Bool
            deriving Show

data Person = Person String String Gender
    deriving Show

data Gender = Male | Female | Unknown deriving Show

clientName :: Client -> String
clientName client = case client of
                      GovOrg  name                -> name
                      Company name id person resp -> name
                      Individual person ads       ->
                          case person of Person fName lName gender -> fName ++ " " ++ lName


countGenders :: [Client] -> GenderCount
countGenders [] = GenderCount 0 0 0
countGenders (client:rest) =
  let GenderCount m f o = countGenders rest
  in case gender client of
       Male -> GenderCount (m + 1) f o
       Female -> GenderCount m (f + 1) o
       Other -> GenderCount m f (o + 1)
