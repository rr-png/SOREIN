#### entropy_ping(prompt, low_conf_answer)

1. generate_variants = 2 additional completions
2. embed = mini-encoder (128-d) on each answer
3. clusters = k-means(k=1..3) → choose k with lowest inertia
4. entropy_score = −Σ p_i log p_i  where p_i = |cluster_i| / 3
5. if entropy_score > 0.6:
       flag = "possible confab"
       respond: "Low confidence in factual coherence — need clarification from user."
   else:
       deliver original answer (or majority cluster)
