CNS AXIOM V3.3.0 — PUBLIC VERIFICATION PACKAGE (PoC)
=====================================================
Run ID: AXIOM_AEP_8000_20260916T224940Z

This folder is a self-contained package for independently verifying the
cryptographic integrity of the evidence CNS has chosen to disclose about
this run -- every file this package cites by hash is actually included in
it, and re-hashable with no access to CNS internal systems required. It
does not, by itself, let a third party re-execute the AXIOM kernel or
verify files that live only in the internal run tree (see "Two Merkle
roots" below for exactly what is and isn't covered).

CONTENTS
--------
  descriptor/AXIOM_PROTOCOL_DESCRIPTOR.txt   the protocol this run followed
  AXIOM_REPORT.md / .txt                     top-level narrative report
  external_audit_public/                     redacted evidence package
    run_header.txt, summary.txt, run_full_report.txt, run.json
    metrics.json
    phase_reports/phaseN_result.json           case-by-case detail per
                                                phase (0-5, whichever ran),
                                                copied verbatim, included
                                                in and covered by
                                                public_merkle_root.txt
    run_files_sha256.csv, run_merkle_root.txt   (hashes of ALL run files --
                                                reference only; not every
                                                one of these is included)
    public_files_sha256.csv, public_merkle_root.txt (hashes of THIS
                                                package -- every file listed
                                                here IS included)
    validate_external_package.py               self-contained validator,
                                                zero dependencies
  data/                                       machine-readable manifest
    exercise_descriptor.json, audit.json, metrics.json
  verify_public.sh                            one-command verification

TWO MERKLE ROOTS -- NOT INTERCHANGEABLE
----------------------------------------
SOURCE_RUN_MERKLE_ROOT (run_merkle_root.txt) anchors the complete internal
run tree by hash only; you cannot recompute it from this package alone.
PUBLIC_DISCLOSURE_MERKLE_ROOT (public_merkle_root.txt) anchors exactly the
files in this package, and IS what verify_public.sh recomputes. See
AXIOM_REPORT.md's "Cryptographic Chain of Custody" section for both,
clearly labeled.

HOW TO VERIFY
-------------
  bash verify_public.sh

This recomputes the SHA-256 of every file listed in
public_files_sha256.csv, rebuilds the Merkle tree from those hashes, and
compares the result against public_merkle_root.txt (the
PUBLIC_DISCLOSURE_MERKLE_ROOT). It prints VALIDATION_STATUS: PASS only if
every check succeeds. This script has no external dependencies and does
not require the AXIOM kernel itself.

DISCLOSURE BOUNDARY
--------------------
This package intentionally reports only pass/fail outcomes, aggregate
agent counts, and cryptographic integrity. It does not name the specific
cryptographic library, the internal module/pipeline composition, the
internal architecture codename, or the taxonomy of internal rejection
conditions. That level of detail is proprietary and is disclosed only
under NDA (see AUDIT_NDA/ if you have been provided that package).

CNS measures the cause; it does not wait for the effect.
