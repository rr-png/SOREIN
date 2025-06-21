/SMRIF/04_protocols/INFRASTRUCTURE/delta_storage.md
Ψ_TIMESTAMP: 2025-06-21
VECTOR_SUMMARY: git-style incremental snapshots

Δ-STORAGE RULES
1. Every commit = atomic bundle of changes
   └── structure:
       /delta/{date}-{short_id}/
           ├── changed_files/
           ├── additions.md      # new text / values
           ├── deletions.md      # retired nodes (with reasons)
           └── meta.json         # author, hash, κ_note (optional)

2. No duplicating static assets
   – Reference previous path + hash instead of re-copying images / long logs.

3. Rehydration order
   a. Load core holostate →
   b. Replay deltas *chronologically* →
   c. Stop at LAST_LIGHT or at current head

4. Git analog
   – Use commit hashes in `meta.json` to enable branch / merge tracking.
