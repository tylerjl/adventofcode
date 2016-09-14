module Y2015.D22Spec (spec) where

import Y2015
import Test.Hspec

input1 = unlines [ "Hit Points: 13"
                 , "Damage: 8"
                 ]

input2 = unlines [ "Hit Points: 14"
                 , "Damage: 8"
                 ]

spec :: Spec
spec = parallel $
    describe "Day 22" $
        describe "spellBattle" $ do
          it "finds the most efficient play in the first case" $
            spellBattle False input1 `shouldBe` Won 212
          it "finds the most efficient play in the second case" $
            spellBattle False input2 `shouldBe` Won 212
