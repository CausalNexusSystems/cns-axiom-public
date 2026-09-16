# CNS AXIOM - Public Evidence Repository

**Causal Nexus Systems LLC**

CNS AXIOM is a deterministic existence-condition architecture for autonomous-agent containment and bounded action admissibility.

> CNS measures the cause; it does not wait for the effect.

---

## Current Public Evidence

### AXIOM V3.3.0 - AEP-8000-R

The current public evidence release contains **two independent AEP-8000-R executions** with:

- deterministic synthetic adversarial fixtures;
- 8,000-agent AEP evaluation per run;
- 15 adversarial cohorts;
- public SHA-256 evidence manifests;
- public Merkle seals;
- source-run Merkle anchors;
- phase-level evidence;
- offline verification tooling;
- explicit public disclosure boundaries.

### Verification

Each independent run includes its own:

```bash
bash verify_public.sh
```

The verifier recomputes the SHA-256 values of the sealed public evidence artifacts and independently reconstructs the public disclosure Merkle root.

The proprietary AXIOM kernel is **not** included in this repository.

---

## Current Release

Evidence:

`evidence/AEP-8000-R/`

Original validated archive:

`releases/AXIOM_V3.3.0_public_evidence_2runs.zip`

Archive SHA-256:

```text
6065e48eb5948446e223317b7b3100835d5ccaf32d731a9f7d32a42de0eda688
```

### Public Merkle Roots

Run 1:

```text
20240a7262a5def0c5ee6060ae78a8526a51b8c19165fe30655377c4a85b9837
```

Run 2:

```text
e6f4598e4c46cae5c42a3f3ee30a16b8b9de129b428cb4821096f7f707d8dbff
```

---

## Historical Evidence

The repository previously published:

**AXIOM V3.1.2 - AEP-6000-R**

The original files remain preserved in repository history and in the current repository root where applicable.

The previous README has been preserved as:

`README_AEP6000_LEGACY.md`

---

## Disclosure Boundary

This repository provides public verification evidence.

It does **not** disclose:

- AXIOM source code;
- compiled AXIOM kernel;
- proprietary internal decision logic;
- protected cryptographic implementation details;
- undisclosed per-agent records;
- internal CNS architecture.

Public verification confirms the integrity of the disclosed evidence. It does not independently re-execute the proprietary AXIOM kernel.

---

## Organization

**Causal Nexus Systems LLC**

Anthony Moreno
Founder & CEO

USPTO Provisional Patent Applications:

- 63/896,666
- 64/043,866
- 64/067,492

Technical evaluation, pilot and partnership material can be made available to vetted parties under controlled disclosure or NDA.
