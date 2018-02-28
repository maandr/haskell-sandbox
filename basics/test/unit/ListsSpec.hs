module ListsSpec where
 
import Lists
import Test.Hspec

spec :: Spec
spec = do

    describe "(:)" $ do
        it "Should prepend literal to a list" $ do
            3 : [1, 2] `shouldBe` [3, 1, 2]
        it "Should prepend literal to a empty list" $ do
            7 : [] `shouldBe` [7]
        it "Should prepend literal to a string"  $ do
            'A' : " Ton Of Love" `shouldBe` "A Ton Of Love"
        
    describe "(++)" $ do
        it "Should append list to another list" $ do
            [1, 2] ++ [3, 4] `shouldBe` [1, 2, 3, 4]
        it "Should concatinate two strings" $ do
            "Hello" ++ " World" `shouldBe` "Hello World"

    describe "length" $ do
        it "Should return the length of a list" $ do
            length [1, 2, 3] `shouldBe` 3
        it "Should return the length of a empty list" $ do
            length [] `shouldBe` 0
        it "Should return the length of a string" $ do
            length "Hello" `shouldBe` 5

    describe "head" $ do
        it "Should return the head of a list" $ do
            head [1, 2, 3] `shouldBe` 1
        it "Should return the head of a infinit list" $ do
            head [3, 6 ..] `shouldBe` 3
        it "Should return the head of a string" $ do
            head "Hello" `shouldBe` 'H'
    
    describe "tail" $ do
        it "Should return the tail of a list" $ do
            tail [1, 2, 3] `shouldBe` [2, 3]
        it "Should return the tail of a string" $ do
            tail "Hello" `shouldBe` "ello"

    describe "concat" $ do
        it "Should concatinate a list of lists" $ do
            concat [[1, 2, 3], [4, 5]] `shouldBe` [1, 2, 3, 4, 5]
        it "Should concatinate a list of list including and empty list" $ do
            concat [[1, 2, 3], []] `shouldBe` [1, 2, 3]

    describe "isEvan" $ do
        it "Should return True given an evan number" $ do
            isEvan 2 `shouldBe` True
        it "Should return False given an odd number" $ do
            isEvan 3 `shouldBe` False

    describe "getEvanNumbersUntilMonad" $ do
        it "Should return list of evan numbers in the range 0..10" $ do
            getEvanNumbersUntilMonad 10 `shouldBe` [0, 2, 4, 6, 8, 10]
    
    describe "getEvanNumbersUntilListComprehention" $ do
        it "Should return list of evan numbers in the range 0..10" $ do
            getEvanNumbersUntilListComprehention 10 `shouldBe` [0, 2, 4, 6, 8, 10]