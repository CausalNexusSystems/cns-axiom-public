#!/bin/bash
# CNS AXIOM V3.1.2 - Public verification (cryptographic integrity, no internals needed).
# Recomputes SHA-256 of each sealed file, reconstructs the Merkle root, and compares
# it against the sealed root. Any single-bit change is detected.
set -e
HERE="$(cd "$(dirname "$0")" && pwd)"
echo "============================================================"
echo "  CNS AXIOM V3.1.2 - AEP-6000-R - PUBLIC VERIFICATION"
echo "  Do not trust the operator. Trust the mathematics."
echo "============================================================"
python3 "$HERE/seals/validate_external_package.py"
echo "============================================================"
