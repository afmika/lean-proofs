import data.real.basic

-- Let's prove that ∀ (x : ℝ), x ^ 16 ≥ 0
def a_goal (x : ℝ) : x^16 ≥ 0 :=
begin
  exact pow_bit0_nonneg x 8,
end

#check a_goal