-- yay
#eval "Hello, World!"

-- a mathetmatical object
-- let's run some trivial examples
#check 4 + 2 -- type ℕ

-- another mathetmatical object
def some_name (x : ℕ) := x + 3
#check some_name -- type ℕ → ℕ

-- a mathematical statement
def math_stat :=
  ∀ n : ℕ, 0 ≤ 2*n
#check math_stat -- Type : Prop

-- rfl is a proof for 8 = 2*4, we use the reflexivity of the equal sign
-- recall rfl : ∀ {α : Type} {a : α}, a = a (basic reflexivity of the equal sign)
-- theorem or def, it doesn't matter that much
theorem easy : 8 = 2*4 := rfl
#check easy -- a proof has a tyoe equal to the initial statement