data Client = GovOrg     String
            | Company    String Integer String String
            | Individual String String Gender Bool
            deriving Show

data Gender = Male | Female | Unknown deriving Show