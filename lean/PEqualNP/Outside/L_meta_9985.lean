import Mathlib.Data.Finset.Basic
import Mathlib.Data.Fintype.Basic
import Mathlib.Tactic.FinCases

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
theorem PEqualNP.Outside.L_meta_9985 : ∃ L : List (Finset (Fin 15) × Finset (Fin 15)),
    L.length ≤ 14 ∧
    (∀ r ∈ L, ∀ i ∈ r.1, ∀ j ∈ r.2, (([32256, 29120, 19872, 11104, 5856, 28700, 19482, 10774, 5646, 16793, 8533, 4301, 2355, 1195, 615] : List ℕ).getD i.val 0).testBit j.val = true) ∧
    ∀ (i : Fin 15) (j : Fin 15), (([32256, 29120, 19872, 11104, 5856, 28700, 19482, 10774, 5646, 16793, 8533, 4301, 2355, 1195, 615] : List ℕ).getD i.val 0).testBit j.val = true → ∃ r ∈ L, i ∈ r.1 ∧ j ∈ r.2 := by
  refine ⟨[
    ({9, 10, 12}, {0, 4, 8}),
    ({6, 8, 13}, {1, 3, 10}),
    ({1, 4, 11}, {6, 7, 12}),
    ({0, 3, 7}, {9, 11, 13}),
    ({0, 2, 6}, {10, 11, 14}),
    ({7, 8, 14}, {1, 2, 9}),
    ({1, 2, 9}, {7, 8, 14}),
    ({5}, {2, 3, 4, 12, 13, 14}),
    ({10, 11, 14}, {0, 2, 6}),
    ({2, 3, 4, 12, 13, 14}, {5}),
    ({0, 4, 8}, {9, 10, 12}),
    ({6, 7, 12}, {1, 4, 11}),
    ({1, 3, 10}, {6, 8, 13}),
    ({9, 11, 13}, {0, 3, 7})
  ], ?_, ?_, ?_⟩
  · decide
  · decide +kernel
  · intro i
    fin_cases i <;> decide +kernel
