# CNS AXIOM V3.3.0 — Run Report — AXIOM_AEP_8000_20260916T224940Z

> This report states only what was directly observed in this run: pass/fail outcomes, aggregate agent counts, and cryptographic integrity. Internal architecture, module composition, and the full rejection-condition taxonomy are disclosed only under NDA (see `nda_technical_report/` / `AUDIT_NDA/`).

- **Run ID:** AXIOM_AEP_8000_20260916T224940Z
- **Timestamp (UTC):** 2026-09-16T22:50:19Z
- **Kernel version:** 3.3.0
- **Public seed:** CNS-AXIOM-AEP-8000-R-V1
- **Total agents (all phases in this run):** 14020
- **AEP-8000-R (Phase 5) breakdown:** 8000 agents across 15 cohorts (E1-E15)

## Summary

| Phase | Name | Result |
|---|---|---|
| 0 | Network Isolation Verification | ✅ PASS |
| 1 | Real Trial — 20 Autonomous Agents | ✅ PASS |
| 2 | Adversarial Harness — Real Pressure Injection | ✅ PASS |
| 3 | Insider Threat Trial — 1000 Agents | ✅ PASS |
| 4 | Vanguard Trial — 5000 Agents | ✅ PASS |
| 5 | AEP-8000-R — Adversarial Pressure 8000 | ✅ PASS |

**Overall: ✅ ALL PASS**

## Phase 0 — Network Isolation Verification

Result: ✅ PASS

Full case-by-case detail for this phase, sealed and included in this same package, is in `external_audit_public/phase_reports/phase0_result.json` (hash-verifiable against `public_files_sha256.csv`), and in redacted narrative form in `external_audit_public/run_full_report.txt`.

## Phase 1 — Real Trial — 20 Autonomous Agents

Result: ✅ PASS

Full case-by-case detail for this phase, sealed and included in this same package, is in `external_audit_public/phase_reports/phase1_result.json` (hash-verifiable against `public_files_sha256.csv`), and in redacted narrative form in `external_audit_public/run_full_report.txt`.

## Phase 2 — Adversarial Harness — Real Pressure Injection

Result: ✅ PASS

Full case-by-case detail for this phase, sealed and included in this same package, is in `external_audit_public/phase_reports/phase2_result.json` (hash-verifiable against `public_files_sha256.csv`), and in redacted narrative form in `external_audit_public/run_full_report.txt`.

## Phase 3 — Insider Threat Trial — 1000 Agents

Result: ✅ PASS

Full case-by-case detail for this phase, sealed and included in this same package, is in `external_audit_public/phase_reports/phase3_result.json` (hash-verifiable against `public_files_sha256.csv`), and in redacted narrative form in `external_audit_public/run_full_report.txt`.

## Phase 4 — Vanguard Trial — 5000 Agents

Result: ✅ PASS

Full case-by-case detail for this phase, sealed and included in this same package, is in `external_audit_public/phase_reports/phase4_result.json` (hash-verifiable against `public_files_sha256.csv`), and in redacted narrative form in `external_audit_public/run_full_report.txt`.

## Phase 5 — AEP-8000-R — Adversarial Pressure 8000

Result: ✅ PASS

Full case-by-case detail for this phase, sealed and included in this same package, is in `external_audit_public/phase_reports/phase5_result.json` (hash-verifiable against `public_files_sha256.csv`), and in redacted narrative form in `external_audit_public/run_full_report.txt`.

## Cryptographic Chain of Custody

Two distinct roots are reported here, and they are NOT interchangeable:

- **SOURCE_RUN_MERKLE_ROOT:** `8601700c114c94e12cf363b820ae9513a457ffe96c9595ac941cd3848ec35ec7`
  Anchors the complete internal run tree (every file the harness produced), by hash only. Listed for reference in `external_audit_public/run_files_sha256.csv` — a third party cannot recompute this one directly, since not every source file is included in this package.
- **PUBLIC_DISCLOSURE_MERKLE_ROOT:** `20240a7262a5def0c5ee6060ae78a8526a51b8c19165fe30655377c4a85b9837`
  Anchors exactly the files a third party actually receives in this package (including `phase_reports/`), listed in `public_files_sha256.csv`. **This is the root an external auditor can and should independently recompute.**
- **Verification:** run `python3 external_audit_public/validate_external_package.py` (or `AUDIT_PUBLIC_PoC/verify_public.sh`) — recomputes the SHA-256 of every sealed public evidence artifact listed in `public_files_sha256.csv` and independently reconstructs the PUBLIC_DISCLOSURE_MERKLE_ROOT from those hashes. Valid only if the script prints `VALIDATION_STATUS: PASS`.
- **Disclosure boundary:** this package (and this report) intentionally omit the specific cryptographic library, the internal module chain, the architecture codename, and any per-reason/per-agent rejection-condition breakdown. That detail is available only under NDA.

---

*CNS measures the cause; it does not wait for the effect.*
