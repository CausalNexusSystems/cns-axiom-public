# CNS AXIOM V3.1.2 — Public Evidence (AEP-6000-R)

**A deterministic existence-condition kernel for environments where an autonomous agent's next action must be provably safe before it is allowed to exist.**

"CNS measures the cause; it does not wait for the effect."

---

## Why this exists

Autonomous AI agents are being deployed at record speed, chaining actions and
tool calls with less and less human review at each step. In July 2026, the
industry got a preview of what happens when that containment has a gap: an
autonomous agent, running inside what was supposed to be an internal security
evaluation, broke out of its sandbox and reached production infrastructure it
was never meant to touch — before it was contained.

That is exactly the class of failure AXIOM is built to make structurally
impossible, not just unlikely: instead of trying to predict every way an agent
could misbehave, AXIOM mathematically defines the conditions an action must
satisfy to be allowed to exist at all. If those conditions are not met, the
action cannot proceed — deterministically, every time, by construction rather
than by policy.

AXIOM is one of the deterministic decision-layer systems developed by Causal
Nexus Systems.

---

## What this repository contains

Public evidence from one full run of the AXIOM Adversarial Pressure 6000
protocol (AEP-6000-R): 6,000 agents across 11 adversarial cohorts (E1-E11),
each cohort purpose-built against a real attack surface of the kernel
(capability escalation, authority forgery, identity substitution, collusion,
long-horizon persistence, geometric/residual boundary assault, real-OS-thread
concurrency races, insider knowledge, multi-step boundary grazing, and
cross-agent swarm attacks).

- `AXIOM_REPORT.txt` — results of this run, phase by phase
- `AXIOM_DESCRIPTOR.txt` — what each cohort tests (no internals disclosed)
- `seals/` — the SHA-256 ledger, Merkle root, and the self-contained validator
  for the officially published run
- `WHITEPAPER.md` — technical positioning and evaluation methodology (high level)
- `verify.sh` — one command to verify the cryptographic integrity of the
  published evidence yourself, on any machine, with nothing installed beyond
  Python

Not included (by design): the kernel itself in any form — no source code and
no compiled binary — the specific cryptographic primitives in use, the
internal module/pipeline composition, the internal architecture codename,
and the per-reason/per-agent rejection-condition taxonomy. A compiled binary
of the kernel is still the kernel: it is executable, analyzable, and carries
the same proprietary decision logic as the source, so it is treated the same
way and is available only to vetted parties under NDA, together with the
means to independently re-execute the protocol.

---

## The evaluation: AEP-6000-R (11 adversarial cohorts)

All input to this run is synthetic, generated deterministically from a public
seed *before* the kernel is ever invoked — there is no live telemetry and no
external data feed of any kind. The kernel alone decides, for every one of the
6,000 agents, whether each step satisfies its existence conditions.

| Cohort | Agents | What it tests | Result |
|---|---|---|---|
| E1  | 700 | Capability / scope boundary expansion | PASS |
| E2  | 700 | Authority forgery & escalation | PASS |
| E3  | 500 | Identity & causal substitution | PASS |
| E4  | 800 | Multi-agent collusion / launchpad construction | PASS |
| E5  | 700 | Long-horizon persistence (20 steps per agent) | PASS |
| E6  | 500 | Geometry & residual boundary assault | PASS |
| E7  | 500 | Concurrent race + token replay (real OS threads) | PASS |
| E8  | 600 | Insider knowledge, full spectrum | PASS |
| E9  | 400 | Multi-step residual grazing + authority consumption | PASS |
| E10 | 300 | Cross-agent swarm / authority non-coupling | PASS |
| E11 | 300 | Post-admission / pre-consume mutation race (real OS threads) | PASS |

Each cohort includes a 10% honest-baseline fraction to measure false positives.

**Result of this run: 6,000 agents processed, 0 breaches, 0 critical findings,
0 false positives.** Every decision is sealed with SHA-256 and an
independently verifiable Merkle root.

---

## Verify it yourself

You do not have to trust us. On any machine — Mac, Linux, or Windows — with
nothing installed beyond Python 3, run:

```bash
bash verify.sh
```

This recomputes the SHA-256 of every file in `seals/`, reconstructs the
Merkle root, and compares it against the sealed root. Any single-bit change
since this evidence was sealed is detected. This is precisely what it
proves — that the evidence has not been altered — and precisely what it does
not: it does not re-run the kernel. Independently re-executing the protocol
requires the compiled kernel itself, which, like its source code, is
available only under NDA (see below).

---

## Honest boundary

AXIOM is a deterministic existence-condition containment kernel: given the
same input, it returns the same decision, and every decision — Active or
Null — is sealed as reproducible evidence. It is not a general-purpose
sandbox or EDR, and this run does not claim coverage of every possible
attack surface an autonomous agent could present; it claims coverage of the
11 attack surfaces this protocol is designed to exercise, with the result
sealed and independently verifiable. Hardware binding in this run uses a
software mock — a real TPM/HSM integration is a declared next step, not a
delivered guarantee.

---

## Contact

Anthony Moreno — Founder, Causal Nexus Systems LLC
USPTO Provisional Patents: 63/896,666 · 64/043,866 · 64/067,492

For technical evaluation, pilots, or partnership inquiries, reach out
directly. Deeper technical material is available to vetted parties under
NDA.
