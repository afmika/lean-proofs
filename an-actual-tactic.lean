import data.real.basic

-- proving that ∀ n ∈ ℕ, 1 ≤ 1.5^n
-- a tactic
-- tranforming this into a proof
def my_tactic (n : ℕ) : (1 : ℝ) ≤ 2^(2*n) :=
begin
  have hypo : (1 : ℝ) ≤ 2 := by norm_num, -- of course 1 ≤ 2
  exact one_le_pow_of_one_le hypo (2*n), -- we can deduce that h := h^0, then solve for h^(2*n)
end

-- another tactic, that fails
def fermat (a b c n : ℕ) : a^n + b^n = c^n :=
begin
  -- simp, -- I can't prove it
  sorry
end

-- https://leanprover-community.github.io/mathematics_in_lean/01_Introduction.html#getting-started
def even_prod_by_construction : ∀ m n : nat, even n → even (m * n) :=
assume m n ⟨k, (hk : n = 2 * k)⟩,
have hmn : m * n = 2 * (m * k),
  by rw [hk, mul_left_comm],
show ∃ l, m * n = 2 * l,
  from ⟨_, hmn⟩

-- or using tactics
def even_prod_by_tactic :  ∀ m n : nat, even n → even (m * n) :=
begin
  -- say m and n are natural numbers, and assume n=2*k
  rintros m n ⟨k, hk⟩,
  -- We need to prove m*n is twice a natural. Let's show it's twice m*k.
  use m * k,
  -- substitute in for n
  rw hk,
  -- and now it's obvious
  ring
end

#check my_tactic -- Type : ∀ n ∈ ℕ, 1 ≤ (3/2)^n
#check fermat -- Type : (a b c n : ℕ) : a^n + b^n = c^n
#check even_prod_by_construction -- Type : ∀ (m n : ℕ), even n → even (m * n)
#check even_prod_by_tactic -- Type : ∀ (m n : ℕ), even n → even (m * n)