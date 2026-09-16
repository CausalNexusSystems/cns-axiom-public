#!/usr/bin/env bash
# CNS AXIOM V3.3.0 -- one-command public verification wrapper.
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

echo "════════════════════════════════════════════════════════"
echo "  CNS AXIOM — Public Package Verification"
echo "════════════════════════════════════════════════════════"

if python3 external_audit_public/validate_external_package.py; then
    echo ""
    echo "  RESULT: PASS -- all sealed public evidence artifacts (public_files_sha256.csv) verify bit for bit."
    exit 0
else
    echo ""
    echo "  RESULT: REVIEW -- verification did not pass. Do not treat"
    echo "  this package as authentic until the discrepancy is resolved."
    exit 1
fi
